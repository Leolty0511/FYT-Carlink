package android.sax;

/* JADX INFO: loaded from: classes.dex */
class Children {
    public Child[] children = new Child[16];

    public static class Child extends Element {
        public final int hash;
        public Child next;

        public Child(Element element, String str, String str2, int i2, int i3) {
            super(element, str, str2, i2);
            this.hash = i3;
        }
    }

    public Element get(String str, String str2) {
        int iHashCode = (str.hashCode() * 31) + str2.hashCode();
        Child child = this.children[iHashCode & 15];
        if (child == null) {
            return null;
        }
        do {
            if (child.hash == iHashCode && child.uri.compareTo(str) == 0 && child.localName.compareTo(str2) == 0) {
                return child;
            }
            child = child.next;
        } while (child != null);
        return null;
    }

    public Element getOrCreate(Element element, String str, String str2) {
        int iHashCode = (str.hashCode() * 31) + str2.hashCode();
        int i2 = iHashCode & 15;
        Child child = this.children[i2];
        if (child == null) {
            Child child2 = new Child(element, str, str2, element.depth + 1, iHashCode);
            this.children[i2] = child2;
            return child2;
        }
        while (true) {
            if (child.hash == iHashCode && child.uri.compareTo(str) == 0 && child.localName.compareTo(str2) == 0) {
                return child;
            }
            Child child3 = child.next;
            if (child3 == null) {
                Child child4 = new Child(element, str, str2, element.depth + 1, iHashCode);
                child.next = child4;
                return child4;
            }
            child = child3;
        }
    }
}
