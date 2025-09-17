FROM python:3.7.11-slim  
#(archivo slim generalmente usado por ser pequeño, FROM especifica imagen a construir


# workdir es el directorio adebntro
WORKDIR  /python-api      
# copy del host al contenedor
COPY requirements.txt requirements.txt
# run para tener las dependencias (npm)
RUN pip install -r requirements.txt

COPY . .
#
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
# ejecutar comando