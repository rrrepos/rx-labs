# rx-labs

## Copy Model docker service
sudo cp ~/rx-labs/scripts/model.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable model.service
sudo systemctl start model.service