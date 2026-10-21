package org.ksoap2.transport;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Proxy;
import java.util.List;
import java.util.zip.GZIPInputStream;
import org.ksoap2.HeaderProperty;
import org.ksoap2.SoapEnvelope;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class HttpTransportSE extends Transport {
    public HttpTransportSE(String url) {
        super((Proxy) null, url);
    }

    public HttpTransportSE(Proxy proxy, String url) {
        super(proxy, url);
    }

    public HttpTransportSE(String url, int timeout) {
        super(url, timeout);
    }

    public HttpTransportSE(Proxy proxy, String url, int timeout) {
        super(proxy, url, timeout);
    }

    public HttpTransportSE(String url, int timeout, int contentLength) {
        super(url, timeout);
    }

    public HttpTransportSE(Proxy proxy, String url, int timeout, int contentLength) {
        super(proxy, url, timeout);
    }

    @Override // org.ksoap2.transport.Transport
    public void call(String soapAction, SoapEnvelope envelope) throws XmlPullParserException, IOException {
        call(soapAction, envelope, null);
    }

    @Override // org.ksoap2.transport.Transport
    public List call(String soapAction, SoapEnvelope envelope, List headers) throws XmlPullParserException, IOException {
        return call(soapAction, envelope, headers, null);
    }

    /* JADX WARN: Code duplicated, block: B:86:0x017f  */
    /* JADX WARN: Code duplicated, block: B:88:0x0185  */
    @Override // org.ksoap2.transport.Transport
    public List call(String soapAction, SoapEnvelope envelope, List headers, File outputFile) throws XmlPullParserException, IOException {
        String soapAction2;
        boolean xmlContent;
        boolean gZippedContent;
        int contentLength;
        String soapAction3;
        if (soapAction != null) {
            soapAction2 = soapAction;
        } else {
            soapAction2 = "\"\"";
        }
        byte[] requestData = createRequestData(envelope, "UTF-8");
        this.requestDump = this.debug ? new String(requestData) : null;
        this.responseDump = null;
        ServiceConnection connection = getServiceConnection();
        connection.setRequestProperty("User-Agent", "ksoap2-android/2.6.0+");
        if (envelope.version != 120) {
            connection.setRequestProperty("SOAPAction", soapAction2);
        }
        if (envelope.version == 120) {
            connection.setRequestProperty("Content-Type", "application/soap+xml;charset=utf-8");
        } else {
            connection.setRequestProperty("Content-Type", "text/xml;charset=utf-8");
        }
        connection.setRequestProperty("Accept-Encoding", "gzip");
        if (headers != null) {
            for (int i = 0; i < headers.size(); i++) {
                HeaderProperty hp = (HeaderProperty) headers.get(i);
                connection.setRequestProperty(hp.getKey(), hp.getValue());
            }
        }
        connection.setRequestMethod("POST");
        sendData(requestData, connection, envelope);
        InputStream is = null;
        List retHeaders = null;
        int status = connection.getResponseCode();
        try {
            retHeaders = connection.getResponseProperties();
            xmlContent = false;
            gZippedContent = false;
            contentLength = 8192;
            int contentLength2 = 0;
            while (contentLength2 < retHeaders.size()) {
                try {
                    HeaderProperty hp2 = (HeaderProperty) retHeaders.get(contentLength2);
                    if (hp2.getKey() == null) {
                        soapAction3 = soapAction2;
                    } else {
                        soapAction3 = soapAction2;
                        if (hp2.getKey().equalsIgnoreCase("content-length") && hp2.getValue() != null) {
                            try {
                                int contentLength3 = Integer.parseInt(hp2.getValue());
                                contentLength = contentLength3;
                            } catch (NumberFormatException e) {
                                contentLength = 8192;
                            }
                        }
                        if (hp2.getKey().equalsIgnoreCase("Content-Type") && hp2.getValue().contains("xml")) {
                            xmlContent = true;
                        }
                        if (hp2.getKey().equalsIgnoreCase("Content-Encoding") && hp2.getValue().equalsIgnoreCase("gzip")) {
                            gZippedContent = true;
                        }
                    }
                    try {
                        contentLength2++;
                        soapAction2 = soapAction3;
                    } catch (IOException e2) {
                        e = e2;
                        if (contentLength > 0) {
                            if (gZippedContent) {
                                is = getUnZippedInputStream(new BufferedInputStream(connection.getErrorStream(), contentLength));
                            } else {
                                is = new BufferedInputStream(connection.getErrorStream(), contentLength);
                            }
                        }
                        if ((e instanceof HttpResponseException) && !xmlContent) {
                            if (this.debug && is != null) {
                                readDebug(is, contentLength, outputFile);
                            }
                            connection.disconnect();
                            throw e;
                        }
                        if (this.debug) {
                            is = readDebug(is, contentLength, outputFile);
                        }
                        if (is != null) {
                            parseResponse(envelope, is, retHeaders);
                        }
                        connection.disconnect();
                        return retHeaders;
                    }
                } catch (IOException e3) {
                    e = e3;
                }
            }
            if (status != 200 && status != 202) {
                throw new HttpResponseException("HTTP request failed, HTTP status: " + status, status, retHeaders);
            }
            if (contentLength > 0) {
                if (gZippedContent) {
                    is = getUnZippedInputStream(new BufferedInputStream(connection.openInputStream(), contentLength));
                } else {
                    is = new BufferedInputStream(connection.openInputStream(), contentLength);
                }
            }
        } catch (IOException e4) {
            e = e4;
            xmlContent = false;
            gZippedContent = false;
            contentLength = 8192;
        }
        if (this.debug) {
            is = readDebug(is, contentLength, outputFile);
        }
        if (is != null) {
            parseResponse(envelope, is, retHeaders);
        }
        connection.disconnect();
        return retHeaders;
    }

    protected void sendData(byte[] requestData, ServiceConnection connection, SoapEnvelope envelope) throws IOException {
        connection.setRequestProperty("Content-Length", "" + requestData.length);
        connection.setFixedLengthStreamingMode(requestData.length);
        OutputStream os = connection.openOutputStream();
        os.write(requestData, 0, requestData.length);
        os.flush();
        os.close();
    }

    protected void parseResponse(SoapEnvelope envelope, InputStream is, List returnedHeaders) throws XmlPullParserException, IOException {
        parseResponse(envelope, is);
    }

    private InputStream readDebug(InputStream is, int contentLength, File outputFile) throws IOException {
        OutputStream bos;
        if (outputFile != null) {
            bos = new FileOutputStream(outputFile);
        } else {
            bos = new ByteArrayOutputStream(contentLength > 0 ? contentLength : ServiceConnection.DEFAULT_BUFFER_SIZE);
        }
        byte[] buf = new byte[256];
        while (true) {
            int rd = is.read(buf, 0, 256);
            if (rd == -1) {
                break;
            }
            bos.write(buf, 0, rd);
        }
        bos.flush();
        if (bos instanceof ByteArrayOutputStream) {
            buf = ((ByteArrayOutputStream) bos).toByteArray();
        }
        this.responseDump = new String(buf);
        is.close();
        if (outputFile != null) {
            return new FileInputStream(outputFile);
        }
        return new ByteArrayInputStream(buf);
    }

    private InputStream getUnZippedInputStream(InputStream inputStream) throws IOException {
        try {
            return (GZIPInputStream) inputStream;
        } catch (ClassCastException e) {
            return new GZIPInputStream(inputStream);
        }
    }

    @Override // org.ksoap2.transport.Transport
    public ServiceConnection getServiceConnection() throws IOException {
        return new ServiceConnectionSE(this.proxy, this.url, this.timeout);
    }
}
