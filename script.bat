@echo off
:: 1 - Verificar o volume da unidade C:
echo Verificando o volume da unidade C:...
wmic logicaldisk where "DeviceID='C:'" get Size, FreeSpace

:: 2 - Verificar a versão do sistema
echo Verificando a versão do sistema...
ver

:: 3 - Limpar a tela
cls

:: 4 - Listar todos os arquivos e pastas da unidade C:
echo Listando todos os arquivos e pastas da unidade C:...
dir C:\

:: 5 - Criar 3 pastas na unidade C: com os nomes Huginho, Zezinho e Luizinho
echo Criando as pastas Huginho, Zezinho e Luizinho...
mkdir C:\Huginho
mkdir C:\Zezinho
mkdir C:\Luizinho

:: 6 - Verificar se as pastas foram criadas
echo Verificando se as pastas foram criadas...
if exist C:\Huginho (
    echo Pasta Huginho criada com sucesso.
) else (
    echo Falha ao criar a pasta Huginho.
)

if exist C:\Zezinho (
    echo Pasta Zezinho criada com sucesso.
) else (
    echo Falha ao criar a pasta Zezinho.
)

if exist C:\Luizinho (
    echo Pasta Luizinho criada com sucesso.
) else (
    echo Falha ao criar a pasta Luizinho.
)

:: 7 - Acessar cada uma dessas pastas e criar outras pastas: Argentina, Brasil e Uruguai
echo Criando pastas dentro de Huginho, Zezinho e Luizinho...

:: Huginho
cd C:\Huginho
mkdir Argentina
mkdir Brasil
mkdir Uruguai
cd ..

:: Zezinho
cd C:\Zezinho
mkdir Argentina
mkdir Brasil
mkdir Uruguai
cd ..

:: Luizinho
cd C:\Luizinho
mkdir Argentina
mkdir Brasil
mkdir Uruguai
cd ..

:: Verificar se as pastas foram criadas
echo Verificando se as pastas Argentina, Brasil e Uruguai foram criadas...
for %%d in (Huginho Zezinho Luizinho) do (
    if exist C:\%%d\Argentina (
        echo Pasta Argentina criada dentro de %%d.
    ) else (
        echo Falha ao criar a pasta Argentina dentro de %%d.
    )
    if exist C:\%%d\Brasil (
        echo Pasta Brasil criada dentro de %%d.
    ) else (
        echo Falha ao criar a pasta Brasil dentro de %%d.
    )
    if exist C:\%%d\Uruguai (
        echo Pasta Uruguai criada dentro de %%d.
    ) else (
        echo Falha ao criar a pasta Uruguai dentro de %%d.
    )
)

:: 8 - Remover todas as pastas com o nome Argentina
echo Removendo todas as pastas chamadas Argentina...
rd /s /q C:\Huginho\Argentina
rd /s /q C:\Zezinho\Argentina
rd /s /q C:\Luizinho\Argentina

:: 9 - Criar um arquivo log.txt na unidade C:
echo Criando arquivo log.txt na unidade C:...
echo Log gerado em %date% %time% > C:\log.txt

:: 10 - Fazer uma cópia para cada uma das pastas Huginho, Zezinho e Luizinho
echo Copiando arquivo log.txt para as pastas Huginho, Zezinho e Luizinho...
copy C:\log.txt C:\Huginho\
copy C:\log.txt C:\Zezinho\
copy C:\log.txt C:\Luizinho\

echo Script executado com sucesso!
pause
