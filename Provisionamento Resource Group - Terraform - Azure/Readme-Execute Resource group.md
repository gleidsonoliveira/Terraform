### Realizar o login no azure

```
az login --use-device-code
Obs: Deverá aparecer a mensagem abaixo, você devera clicar no link "https://microsoft.com/devicelogin" e adicionar o código abaixo.
"To sign in, use a web browser to open the page https://microsoft.com/devicelogin and enter the code FD2U474FZ to authenticate."
```

# Se tudo ocorrer bem você, será capaz de visualizar a mensagem abaixo dizendo que a autenticação foi realizada com sucesso.

```
 {
    "cloudName": "AzureCloud",
    "homeTenantId": "da637be7-94db-4760-9364-f7ab147dd75b",
    "id": "e2d1a43a-7cb0-4282-aa2a-0be37debd687",
    "isDefault": true,
    "managedByTenants": [],
    "name": "Azure subscription 1",
    "state": "Enabled",
    "tenantId": "da637be7-94db-4760-9364-f7ab147dd75b",
    "user": {
      "name": "gleidsonguilhermecpd@hotmail.com",
      "type": "user"
    }
  }
```

# Execute o comando abaixo para inicializar o terraform.

```
terraform init
```

Obs: você deverá estar dentro da pasta onde esta o arquivo "resourcegroup.tf"
Devera instalar o provider plugins para execução
hashicorp/azurerm v3.92.0.

# O terraform validate válida os arquivos de configuração em um diretório, referindo-se apenas à configuração e não acessando nenhum serviço remoto como estado remoto, APIs do provedor, etc.

```
terraform validate
```

# O terraform plan cria um plano de execução
'
```
terraform plan
```

# O terraform apply executa as ações propostas em um plano Terraform.

```
terraform apply
```

Após execução do comando deverá aparecer a mensagem solicitando confirmação.

```
enter a value: aqui o valor deverá ser "yes"
```

# lista todos os grupos de recursos criados na azure.

```
az group list
```

Resultado

````
 {
  "id": "/subscriptions/e2d1a43a-7cb0-4282-aa2a-0be37debd687/resourceGroups/rg-terraform",
  "location": "brazilsouth",
  "managedBy": null,
  "name": "rg-terraform",
  "properties": {
    "provisioningState": "Succeeded"
  },
  "tags": {},
  "type": "Microsoft.Resources/resourceGroups"
}
````

