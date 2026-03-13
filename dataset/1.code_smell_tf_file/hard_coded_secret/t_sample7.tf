export MYSQL_PASSWORD=zaphod

/go/bin/trillian_log_server \
	--mysql_uri="${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST})/${MYSQL_DATABASE}" \
	--rpc_endpoint="$HOST:$RPC_PORT" \
	--http_endpoint="$HOST:$HTTP_PORT" \
	--alsologtostderr
EOF

}
