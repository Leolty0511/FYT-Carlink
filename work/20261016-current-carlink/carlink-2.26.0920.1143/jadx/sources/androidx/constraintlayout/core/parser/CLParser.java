package androidx.constraintlayout.core.parser;

/* JADX INFO: loaded from: classes2.dex */
public class CLParser {
    static boolean DEBUG = false;
    private boolean hasComment = false;
    private int lineNumber;
    private String mContent;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.parser.CLParser$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE;

        static {
            int[] iArr = new int[TYPE.values().length];
            $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE = iArr;
            try {
                iArr[TYPE.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.KEY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.TOKEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    public CLParser(String str) {
        this.mContent = str;
    }

    private CLElement createElement(CLElement cLElement, int i2, TYPE type, boolean z2, char[] cArr) {
        CLElement cLElementAllocate;
        if (DEBUG) {
            System.out.println("CREATE " + type + " at " + cArr[i2]);
        }
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[type.ordinal()]) {
            case 1:
                cLElementAllocate = CLObject.allocate(cArr);
                i2++;
                break;
            case 2:
                cLElementAllocate = CLArray.allocate(cArr);
                i2++;
                break;
            case 3:
                cLElementAllocate = CLString.allocate(cArr);
                break;
            case 4:
                cLElementAllocate = CLNumber.allocate(cArr);
                break;
            case 5:
                cLElementAllocate = CLKey.allocate(cArr);
                break;
            case 6:
                cLElementAllocate = CLToken.allocate(cArr);
                break;
            default:
                cLElementAllocate = null;
                break;
        }
        if (cLElementAllocate == null) {
            return null;
        }
        cLElementAllocate.setLine(this.lineNumber);
        if (z2) {
            cLElementAllocate.setStart(i2);
        }
        if (cLElement instanceof CLContainer) {
            cLElementAllocate.setContainer((CLContainer) cLElement);
        }
        return cLElementAllocate;
    }

    private CLElement getNextJsonElement(int i2, char c, CLElement cLElement, char[] cArr) throws CLParsingException {
        if (c == '\t' || c == '\n' || c == '\r' || c == ' ') {
            return cLElement;
        }
        if (c == '\"' || c == '\'') {
            return cLElement instanceof CLObject ? createElement(cLElement, i2, TYPE.KEY, true, cArr) : createElement(cLElement, i2, TYPE.STRING, true, cArr);
        }
        if (c == '[') {
            return createElement(cLElement, i2, TYPE.ARRAY, true, cArr);
        }
        if (c != ']') {
            if (c == '{') {
                return createElement(cLElement, i2, TYPE.OBJECT, true, cArr);
            }
            if (c != '}') {
                switch (c) {
                    case '+':
                    case '-':
                    case '.':
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':
                        return createElement(cLElement, i2, TYPE.NUMBER, true, cArr);
                    case ',':
                    case ':':
                        return cLElement;
                    case '/':
                        int i3 = i2 + 1;
                        if (i3 >= cArr.length || cArr[i3] != '/') {
                            return cLElement;
                        }
                        this.hasComment = true;
                        return cLElement;
                    default:
                        if (!(cLElement instanceof CLContainer) || (cLElement instanceof CLObject)) {
                            return createElement(cLElement, i2, TYPE.KEY, true, cArr);
                        }
                        CLElement cLElementCreateElement = createElement(cLElement, i2, TYPE.TOKEN, true, cArr);
                        CLToken cLToken = (CLToken) cLElementCreateElement;
                        if (cLToken.validate(c, i2)) {
                            return cLElementCreateElement;
                        }
                        throw new CLParsingException("incorrect token <" + c + "> at line " + this.lineNumber, cLToken);
                }
            }
        }
        cLElement.setEnd(i2 - 1);
        CLElement container = cLElement.getContainer();
        container.setEnd(i2);
        return container;
    }

    public static CLObject parse(String str) {
        return new CLParser(str).parse();
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0149 A[EDGE_INSN: B:106:0x0149->B:116:? BREAK  A[LOOP:1: B:14:0x0036->B:86:0x0143], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x004d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0053  */
    /* JADX WARN: Code duplicated, block: B:27:0x0059  */
    /* JADX WARN: Code duplicated, block: B:29:0x005f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0061  */
    /* JADX WARN: Code duplicated, block: B:31:0x0069  */
    /* JADX WARN: Code duplicated, block: B:32:0x006f  */
    /* JADX WARN: Code duplicated, block: B:34:0x0075 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x0077  */
    /* JADX WARN: Code duplicated, block: B:36:0x007f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0085  */
    /* JADX WARN: Code duplicated, block: B:39:0x008b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0092  */
    /* JADX WARN: Code duplicated, block: B:42:0x009e  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00de  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:76:0x0118  */
    /* JADX WARN: Code duplicated, block: B:78:0x0123  */
    public CLObject parse() throws CLParsingException {
        boolean z2;
        long j2;
        char c;
        long j3;
        CLToken cLToken;
        long j4;
        char[] charArray = this.mContent.toCharArray();
        int length = charArray.length;
        int i2 = 1;
        this.lineNumber = 1;
        boolean z3 = false;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                i3 = -1;
                break;
            }
            char c2 = charArray[i3];
            if (c2 == '{') {
                break;
            }
            if (c2 == '\n') {
                this.lineNumber++;
            }
            i3++;
        }
        if (i3 == -1) {
            throw new CLParsingException("invalid json content", null);
        }
        CLObject cLObjectAllocate = CLObject.allocate(charArray);
        cLObjectAllocate.setLine(this.lineNumber);
        cLObjectAllocate.setStart(i3);
        int i4 = i3 + 1;
        CLElement container = cLObjectAllocate;
        while (i4 < length) {
            char c3 = charArray[i4];
            if (c3 == '\n') {
                this.lineNumber += i2;
            }
            if (this.hasComment) {
                if (c3 == '\n') {
                    this.hasComment = z3;
                    if (container == null) {
                        break;
                        break;
                    }
                    if (container.isDone()) {
                        container = getNextJsonElement(i4, c3, container, charArray);
                    } else if (container instanceof CLObject) {
                        if (c3 == '}') {
                            container.setEnd(i4 - 1);
                        } else {
                            container = getNextJsonElement(i4, c3, container, charArray);
                        }
                    } else if (container instanceof CLArray) {
                        z2 = container instanceof CLString;
                        if (z2) {
                            j4 = container.start;
                            if (charArray[(int) j4] == c3) {
                                container.setStart(j4 + 1);
                                container.setEnd(i4 - 1);
                            }
                        } else {
                            if (container instanceof CLToken) {
                                cLToken = (CLToken) container;
                                if (!cLToken.validate(c3, i4)) {
                                    throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.lineNumber, cLToken);
                                }
                            }
                            if (container instanceof CLKey) {
                                j2 = container.start;
                                c = charArray[(int) j2];
                                if (c != '\'') {
                                    container.setStart(j2 + 1);
                                    container.setEnd(i4 - 1);
                                } else {
                                    container.setStart(j2 + 1);
                                    container.setEnd(i4 - 1);
                                }
                            } else {
                                j2 = container.start;
                                c = charArray[(int) j2];
                                if (c != '\'') {
                                    container.setStart(j2 + 1);
                                    container.setEnd(i4 - 1);
                                } else {
                                    container.setStart(j2 + 1);
                                    container.setEnd(i4 - 1);
                                }
                            }
                            if (!container.isDone()) {
                                j3 = i4 - 1;
                                container.setEnd(j3);
                                if (c3 != '}') {
                                    container = container.getContainer();
                                    container.setEnd(j3);
                                    if (container instanceof CLKey) {
                                        container = container.getContainer();
                                        container.setEnd(j3);
                                    }
                                } else {
                                    container = container.getContainer();
                                    container.setEnd(j3);
                                    if (container instanceof CLKey) {
                                        container = container.getContainer();
                                        container.setEnd(j3);
                                    }
                                }
                            }
                        }
                    } else if (c3 == ']') {
                        container.setEnd(i4 - 1);
                    } else {
                        container = getNextJsonElement(i4, c3, container, charArray);
                    }
                    if (!container.isDone()) {
                    }
                } else {
                    continue;
                }
            } else {
                if (container == null) {
                    break;
                }
                if (container.isDone()) {
                    container = getNextJsonElement(i4, c3, container, charArray);
                } else if (container instanceof CLObject) {
                    if (c3 == '}') {
                        container.setEnd(i4 - 1);
                    } else {
                        container = getNextJsonElement(i4, c3, container, charArray);
                    }
                } else if (container instanceof CLArray) {
                    z2 = container instanceof CLString;
                    if (z2) {
                        j4 = container.start;
                        if (charArray[(int) j4] == c3) {
                            container.setStart(j4 + 1);
                            container.setEnd(i4 - 1);
                        }
                    } else {
                        if (container instanceof CLToken) {
                            cLToken = (CLToken) container;
                            if (!cLToken.validate(c3, i4)) {
                                throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.lineNumber, cLToken);
                            }
                        }
                        if ((container instanceof CLKey) || z2) {
                            j2 = container.start;
                            c = charArray[(int) j2];
                            if ((c != '\'' || c == '\"') && c == c3) {
                                container.setStart(j2 + 1);
                                container.setEnd(i4 - 1);
                            }
                        }
                        if (!container.isDone() && (c3 == '}' || c3 == ']' || c3 == ',' || c3 == ' ' || c3 == '\t' || c3 == '\r' || c3 == '\n' || c3 == ':')) {
                            j3 = i4 - 1;
                            container.setEnd(j3);
                            if (c3 != '}' || c3 == ']') {
                                container = container.getContainer();
                                container.setEnd(j3);
                                if (container instanceof CLKey) {
                                    container = container.getContainer();
                                    container.setEnd(j3);
                                }
                            }
                        }
                    }
                } else if (c3 == ']') {
                    container.setEnd(i4 - 1);
                } else {
                    container = getNextJsonElement(i4, c3, container, charArray);
                }
                if (!container.isDone() && (!(container instanceof CLKey) || ((CLKey) container).mElements.size() > 0)) {
                    container = container.getContainer();
                }
            }
            i4++;
            i2 = 1;
            z3 = false;
        }
        while (container != null && !container.isDone()) {
            if (container instanceof CLString) {
                container.setStart(((int) container.start) + 1);
            }
            container.setEnd(length - 1);
            container = container.getContainer();
        }
        if (DEBUG) {
            System.out.println("Root: " + cLObjectAllocate.toJSON());
        }
        return cLObjectAllocate;
    }
}
