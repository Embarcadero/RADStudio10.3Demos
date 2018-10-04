//---------------------------------------------------------------------------

// This software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------

#pragma hdrstop

#include "ResourceModuleU.h"
#include <memory>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma classgroup "System.Classes.TPersistent"
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
__fastcall TResourceModule::TResourceModule(TComponent* Owner)
	: TDataModule(Owner)
{
}

void TResourceModule::Get(TEndpointContext* AContext, TEndpointRequest* ARequest, TEndpointResponse* AResponse)
{
	std::auto_ptr<TMemoryStream> oStr(new TMemoryStream());
	qCustomers->Open();
	qOrders->Open();
	FDSchemaAdapter1->SaveToStream(oStr.get(), TFDStorageFormat::sfJSON);
	// Response owns stream
	AResponse->Body->SetStream(oStr.release(), "application/json", true);
}

void TResourceModule::Post(TEndpointContext* AContext, TEndpointRequest* ARequest, TEndpointResponse* AResponse)
{
	if(!SameText(ARequest->Body->ContentType, "application/json")) {
		AResponse->RaiseBadRequest("content type");
	}
	TStream * lStream;
	if(!ARequest->Body->TryGetStream(lStream)) {
		AResponse->RaiseBadRequest("no stream");
	}
	lStream->Position = 0;
	FDSchemaAdapter1->LoadFromStream(lStream, TFDStorageFormat::sfJSON);
	FDSchemaAdapter1->ApplyUpdates();
}

namespace Resourcemoduleu
{
	void __fastcall PACKAGE Register()
	{
		std::auto_ptr<TEMSResourceAttributes> attributes(new TEMSResourceAttributes());
		attributes->ResourceName = "test";
		RegisterResource(__typeinfo(TResourceModule), attributes.release());
	}
}


