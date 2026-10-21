package com.android.server.wifi.hotspot2.omadm;

import java.io.StringWriter;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: classes.dex */
class MoSerializer {
    static final String DM_VERSION = "1.2";
    static final String TAG = "MoSerializable";
    static final String TAG_DDF_NAME = "DDFName";
    static final String TAG_MGMT_TREE = "MgmtTree";
    static final String TAG_NODE = "Node";
    static final String TAG_NODENAME = "NodeName";
    static final String TAG_PATH = "Path";
    static final String TAG_RTPROPERTIES = "RTProperties";
    static final String TAG_TYPE = "Type";
    static final String TAG_VALUE = "Value";
    static final String TAG_VERSION = "VerDTD";
    private DocumentBuilder mDbBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();

    String serialize(Document doc) {
        StringWriter writer = new StringWriter();
        try {
            TransformerFactory tf = TransformerFactory.newInstance();
            Transformer transformer = tf.newTransformer();
            transformer.setOutputProperty("omit-xml-declaration", "yes");
            transformer.transform(new DOMSource(doc), new StreamResult(writer));
            return writer.toString();
        } catch (TransformerException e) {
            e.printStackTrace();
            return null;
        }
    }

    Document createNewDocument() {
        return this.mDbBuilder.newDocument();
    }

    Element createMgmtTree(Document doc) {
        Element rootElement = doc.createElement(TAG_MGMT_TREE);
        doc.appendChild(rootElement);
        return rootElement;
    }

    Element writeVersion(Document doc) {
        Element dtdElement = doc.createElement(TAG_VERSION);
        dtdElement.appendChild(doc.createTextNode(DM_VERSION));
        return dtdElement;
    }

    Element createNode(Document doc, String nodeName) {
        Element node = doc.createElement(TAG_NODE);
        Element nameNode = doc.createElement(TAG_NODENAME);
        nameNode.appendChild(doc.createTextNode(nodeName));
        node.appendChild(nameNode);
        return node;
    }

    Element createNodeForUrn(Document doc, String urn) {
        Element node = doc.createElement(TAG_RTPROPERTIES);
        Element type = doc.createElement(TAG_TYPE);
        Element ddfName = doc.createElement(TAG_DDF_NAME);
        ddfName.appendChild(doc.createTextNode(urn));
        type.appendChild(ddfName);
        node.appendChild(type);
        return node;
    }

    Element createNodeForValue(Document doc, String name, String value) {
        Element node = doc.createElement(TAG_NODE);
        Element nameNode = doc.createElement(TAG_NODENAME);
        nameNode.appendChild(doc.createTextNode(name));
        node.appendChild(nameNode);
        Element valueNode = doc.createElement(TAG_VALUE);
        valueNode.appendChild(doc.createTextNode(value));
        node.appendChild(valueNode);
        return node;
    }
}
