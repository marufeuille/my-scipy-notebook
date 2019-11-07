#jupyter notebook --generate-config
if [ ! -z "$TOKEN" ] ;
then
  echo "c.NotebookApp.token = '${TOKEN}'" >> /home/jovyan/.jupyter/jupyter_notebook_config.py
fi

start-notebook.sh
