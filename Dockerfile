FROM pretix/standalone:stable
USER root
RUN pip3 install pretix-passbook
RUN pip3 install pretix-mollie
USER pretixuser
RUN cd /pretix/src && make production
