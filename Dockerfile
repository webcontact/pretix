FROM pretix/standalone:4.0
USER root
RUN pip3 install pretix-passbook
RUN pip3 install pretix-mollie
RUN pip3 install pretix-fontpack-free
RUN pip3 install pretix-sepadebit
USER pretixuser
RUN cd /pretix/src && make production
