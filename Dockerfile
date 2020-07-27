FROM pretix/standalone:3.10
USER root
RUN pip3 install pretix-passbook
RUN pip3 install pretix-mollie
RUN pip3 install pretix-fontpack-free
USER pretixuser
RUN cd /pretix/src && make production
