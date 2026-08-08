terraform{
    backend "azurerm"{
        resource_group_name = "credRg"
        storage_account_name = "credpayprojectjaya"
        container_name="statefile"
        key="credpay.teraform.tfstate"
        
    }
}