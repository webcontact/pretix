FROM pretix/standalone:3.15
USER root
RUN pip3 install pretix-passbook
RUN pip3 install pretix-mollie
RUN pip3 install pretix-fontpack-free
RUN pip3 install pretix-sepadebit
USER pretixuser
RUN cd /pretix/src && make production
