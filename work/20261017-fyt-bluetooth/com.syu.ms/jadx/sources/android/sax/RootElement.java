package android.sax;

import android.net.ProxyProperties;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes.dex */
public class RootElement extends Element {
    public final Handler handler;

    public class Handler extends DefaultHandler {
        public Locator locator;
        public int depth = -1;
        public Element current = null;
        public StringBuilder bodyBuilder = null;

        public Handler() {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i2, int i3) {
            StringBuilder sb = this.bodyBuilder;
            if (sb != null) {
                sb.append(cArr, i2, i3);
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws BadXmlException {
            Element element = this.current;
            if (this.depth == element.depth) {
                element.checkRequiredChildren(this.locator);
                EndElementListener endElementListener = element.endElementListener;
                if (endElementListener != null) {
                    endElementListener.end();
                }
                StringBuilder sb = this.bodyBuilder;
                if (sb != null) {
                    String string = sb.toString();
                    this.bodyBuilder = null;
                    element.endTextElementListener.end(string);
                }
                this.current = element.parent;
            }
            this.depth--;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
            this.locator = locator;
        }

        public void start(Element element, Attributes attributes) {
            this.current = element;
            StartElementListener startElementListener = element.startElementListener;
            if (startElementListener != null) {
                startElementListener.start(attributes);
            }
            if (element.endTextElementListener != null) {
                this.bodyBuilder = new StringBuilder();
            }
            element.resetRequiredChildren();
            element.visited = true;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws BadXmlException {
            Children children;
            Element element;
            int i2 = this.depth + 1;
            this.depth = i2;
            if (i2 == 0) {
                startRoot(str, str2, attributes);
                return;
            }
            if (this.bodyBuilder != null) {
                throw new BadXmlException("Encountered mixed content within text element named " + this.current + ".", this.locator);
            }
            Element element2 = this.current;
            if (i2 != element2.depth + 1 || (children = element2.children) == null || (element = children.get(str, str2)) == null) {
                return;
            }
            start(element, attributes);
        }

        public void startRoot(String str, String str2, Attributes attributes) throws BadXmlException {
            RootElement rootElement = RootElement.this;
            if (rootElement.uri.compareTo(str) == 0 && rootElement.localName.compareTo(str2) == 0) {
                start(rootElement, attributes);
                return;
            }
            throw new BadXmlException("Root element name does not match. Expected: " + rootElement + ", Got: " + Element.toString(str, str2), this.locator);
        }
    }

    public RootElement(String str, String str2) {
        super(null, str, str2, 0);
        this.handler = new Handler();
    }

    public ContentHandler getContentHandler() {
        return this.handler;
    }

    public RootElement(String str) {
        this(ProxyProperties.LOCAL_EXCL_LIST, str);
    }
}
