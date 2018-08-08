FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGRhdGEtc3luYy1hcGIKZGVzY3JpcHRpb246IEluc3RhbGxzIHRo\
ZSBBZXJvZ2VhciBEYXRhIFN5bmMgU2VydmljZQpiaW5kYWJsZTogVHJ1ZQphc3luYzogb3B0aW9u\
YWwKdGFnczoKICAtIG1vYmlsZS1zZXJ2aWNlCiAgLSBtb2JpbGUtY2xpZW50LWVuYWJsZWQKbWV0\
YWRhdGE6CiAgZGlzcGxheU5hbWU6IERhdGEgU3luYwogIGNvbnNvbGUub3BlbnNoaWZ0LmlvL2lj\
b25DbGFzczogZmEgZmEtcmVmcmVzaAogICMgZG9jdW1lbnRhdGlvblVybDogImh0dHBzOi8vZG9j\
cy5hZXJvZ2Vhci5vcmcvZXh0ZXJuYWwvYXBiL21ldHJpY3MuaHRtbCIKICBwcm92aWRlckRpc3Bs\
YXlOYW1lOiAiUmVkIEhhdCwgSW5jLiIKICAjIHNkay1kb2NzLWFuZHJvaWQ6ICJodHRwczovL2Rv\
Y3MuYWVyb2dlYXIub3JnL2V4dGVybmFsL2FwYi9tZXRyaWNzL2FuZHJvaWQuaHRtbCIKICAjIHNk\
ay1kb2NzLWNvcmRvdmE6ICJodHRwczovL2RvY3MuYWVyb2dlYXIub3JnL2V4dGVybmFsL2FwYi9t\
ZXRyaWNzL2NvcmRvdmEuaHRtbCIKICAjIHNkay1kb2NzLWlvczogImh0dHBzOi8vZG9jcy5hZXJv\
Z2Vhci5vcmcvZXh0ZXJuYWwvYXBiL21ldHJpY3MvaW9zLmh0bWwiCiAgIyBzZGstZG9jcy14YW1h\
cmluOiAiaHR0cHM6Ly9kb2NzLmFlcm9nZWFyLm9yZy9leHRlcm5hbC9hcGIvbWV0cmljcy94YW1h\
cmluLmh0bWwiCiAgc2VydmljZU5hbWU6IGRhdGEtc3luYwpwbGFuczoKICAtIG5hbWU6IGRlZmF1\
bHQKICAgIGRlc2NyaXB0aW9uOiBUaGlzIHBsYW4gc2V0cyB1cCB0aGUgRGF0YSBTeW5jIEFkbWlu\
IFVJLCBUaGUgRGF0YSBTeW5jIFNlcnZlciBhbmQgUG9zdGdyZVNRTAogICAgZnJlZTogVHJ1ZQog\
ICAgbWV0YWRhdGE6CiAgICAgIG1vYmlsZWNsaWVudF9iaW5kX3BhcmFtZXRlcnNfZGF0YToKICAg\
ICAgICAtICd7Im5hbWUiOiAiQ0xJRU5UX0lEIiwgInZhbHVlIjogIm1ldGFkYXRhLm5hbWUiLCAi\
dHlwZSI6ICJwYXRoIn0nCiAgICBwYXJhbWV0ZXJzOiAKICAgICAgLSBuYW1lOiBQT1NUR1JFU19T\
VE9SQUdFX1NJWkUKICAgICAgICByZXF1aXJlZDogVHJ1ZQogICAgICAgIGRlZmF1bHQ6IDEwCiAg\
ICAgICAgdHlwZTogbnVtYmVyCiAgICAgICAgdGl0bGU6IFBvc3RncmVzIFN0b3JhZ2UgU2l6ZSAo\
R2IpCiAgICAgIC0gbmFtZTogUE9TVEdSRVNfVVNFUgogICAgICAgIGRlc2NyaXB0aW9uOiBVc2Vy\
bmFtZSB0aGF0IHdpbGwgYmUgdXNlZCB0byBjb25uZWN0IHRvIHBvc3RncmVzICgndXNlcicgd2ls\
bCBiZSB1c2VkIGlmIGJsYW5rKQogICAgICAgIGRlZmF1bHQ6IHVzZXIKICAgICAgICB0eXBlOiBz\
dHJpbmcKICAgICAgICByZXF1aXJlZDogRmFsc2UKICAgICAgICB0aXRsZTogUG9zdGdyZXMgVXNl\
cgogICAgICAtIG5hbWU6IFBPU1RHUkVTX1BBU1NXT1JECiAgICAgICAgZGVzY3JpcHRpb246IFBh\
c3N3b3JkIHRvIGNvbm5lY3QgdG8gUG9zdGdyZXMgKGdlbmVyYXRlZCBpZiBibGFuaykKICAgICAg\
ICB0eXBlOiBzdHJpbmcKICAgICAgICByZXF1aXJlZDogRmFsc2UKICAgICAgICB0aXRsZTogUG9z\
dGdyZXMgUGFzc3dvcmQKICAgIGJpbmRfcGFyYW1ldGVyczoKICAgICAgLSBuYW1lOiBDTElFTlRf\
SUQKICAgICAgICByZXF1aXJlZDogVHJ1ZQogICAgICAgIHRpdGxlOiBNb2JpbGUgQ2xpZW50IElE\
CiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAgICAgCg=="






COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
COPY vars /opt/ansible/vars
RUN ansible-galaxy install -r /opt/apb/actions/requirements.yml -p /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
