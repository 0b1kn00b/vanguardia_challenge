package ws;

/**
	CertMeta represents the accepted types for certificate & key data.
**/
typedef CertMeta = ts.AnyOf4<String, global.Buffer, Array<String>, Array<global.Buffer>>;