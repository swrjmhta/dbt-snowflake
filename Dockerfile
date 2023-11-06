FROM 660061364911.dkr.ecr.ap-south-1.amazonaws.com/dbt-snowflake-repo:latest 
USER root
#RUN mkdir -p dbt-glue
#WORKDIR dbt-glue
WORKDIR /apps
ADD dbt_snowflake_project .
COPY ./snowflake_key/rsa_key.p8 ./
WORKDIR /root
RUN mkdir -p ./.dbt
COPY ./profiles.yml ./.dbt/
WORKDIR /apps
#ADD hdfc_amc_empower_dbt_projects .
#RUN ls
#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r /apps/requirements.txt
WORKDIR /apps/dbt_snowflake_project
#CMD ["/usr/local/bin/dbt","debug"]
