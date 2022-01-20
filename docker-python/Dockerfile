FROM python

COPY SucTest /usr/src/app/project
WORKDIR /usr/src/app/project
RUN pip install --no-cache-dir -r requirements.txt
RUN chmod u+x start.sh
 

EXPOSE 80
CMD ["sh","start.sh"]