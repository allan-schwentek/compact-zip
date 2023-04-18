# Compact-Zip

Script to scan the server for XML files (or other extensions, adapt for your use), with a creation / modification date of over 30 days. The script will find the files, copy them to the folder of the ARQ-DEST variable, zip all the copied files, delete the files in the source folder, and move the created ZIP to the source folder.

Modify the variables according to the needs of each folder or create the folders as already set in the variables.

set ARQ-ORIGINAL="folder with xml files"

set zip="c:\Program Files\7-Zip\7z.exe"

set ARQ-DEST=C:\Compacta-ZIP\Compacta\

set dirarq=C:\Compacta-ZIP\DIRARQ.txt

set dirxml=C:\Compacta-ZIP\DIRXML.txt

set status=C:\Compacta-ZIP\STATUS.txt


#

Script para vasculhar o servidor em busca de arquivos XML (ou outras extenções, adapte ao seu uso), com mais de 30 dias de criação / modificação. 
O script irá encontrar os arquivos, copialos para a pasta da variavel ARQ-DEST, zipar todos os arquivos copiados. Excluir os arquivos na pasta de onde foi copiado e mover o ZIP criado, para a pasta de onde eles saíram. 

Modificar as variaveis de acordo com a necessidade do uso de cada pasta, ou criar as pastas conforme já setado nas variavies.

set ARQ-ORIGINAL="folder with xml files"

set zip="c:\Program Files\7-Zip\7z.exe"

set ARQ-DEST=C:\Compacta-ZIP\Compacta\

set dirarq=C:\Compacta-ZIP\DIRARQ.txt

set dirxml=C:\Compacta-ZIP\DIRXML.txt

set status=C:\Compacta-ZIP\STATUS.txt
