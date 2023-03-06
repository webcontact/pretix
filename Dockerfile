FROM pretix/standalone:4.17.1
USER root
RUN pip3 install pretix-passbook
RUN pip3 install pretix-mollie
RUN pip3 install pretix-fontpack-free
RUN pip3 install pretix-sepadebit
RUN pip3 install pretix-pages
RUN pip3 install pretix-covid-certificates
USER pretixuser
RUN cd /pretix/src && make production
