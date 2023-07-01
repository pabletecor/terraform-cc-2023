# terraform-cc-2023
Práctica de la asignatura Cloud Computing del Máster en Ingeniería Informática de la UHU.

PASOS A SEGUIR

# 1. INSTALACIÓN DE TERRAFORM

En Google cloud, abrimos la cloudshell y ejecutamos el siguiente comando:

` wget https://releases.hashicorp.com/terraform/1.4.2/terraform_1.4.2_linux_amd64.zip`

Descomprime el fichero usando unzip (si lo necesitas instala el paquete unzip):

`sudo apt install unzip`

`unzip terraform_1.4.2_linux_amd64.zip`

Mueve el fichero terraform a una carpeta incluida en el PATH, por ejemplo a /usr/local/bin/:

`sudo mv terraform /usr/local/bin`

Prueba la instalación con:

`terraform -version`

# 2. Obtención de las claves de cuentas de servicio

Seguimos los pasos del tutorial https://cloud.google.com/iam/docs/keys-create-delete?hl=es-419#iam-service-account-keys-create-console y el fichero .json resultante lo subimos a nuestro editor de cloud shell con el nombre credenciales.json

 # 3. Crear archivos principal.tf , ips.tf e instancias.tf

 Los archivos `.tf` del repositorio se encargan de establecer las credenciales (usando el archivo `credenciales.json`)

 # 4. Iniciamos y ejecutamos terraform

 En la terminal de cloud shell ejecutamos los siguientes comandos:

Iniciar terraform: 

`terraform init`

Planear la infraestructura:

`terraform plan`

Aplicar la infraestructura:

`terraform apply`

# 5. Destruimos las creaciones

Para librerar todos los recursos creados con terraform usamos el comando:

`terraform destroy`
