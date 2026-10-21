package android.filterfw.io;

import android.accessibilityservice.c;
import android.filterfw.core.Filter;
import android.filterfw.core.FilterFactory;
import android.filterfw.core.FilterGraph;
import android.filterfw.core.KeyValueMap;
import android.filterfw.core.ProtocolException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class TextGraphReader extends GraphReader {
    private KeyValueMap mBoundReferences;
    private ArrayList<Command> mCommands = new ArrayList<>();
    private Filter mCurrentFilter;
    private FilterGraph mCurrentGraph;
    private FilterFactory mFactory;
    private KeyValueMap mSettings;

    public class AddLibraryCommand implements Command {
        private String mLibraryName;

        public AddLibraryCommand(String str) {
            this.mLibraryName = str;
        }

        @Override // android.filterfw.io.TextGraphReader.Command
        public void execute(TextGraphReader textGraphReader) {
            FilterFactory unused = textGraphReader.mFactory;
            FilterFactory.addFilterLibrary(this.mLibraryName);
        }
    }

    public class AllocateFilterCommand implements Command {
        private String mClassName;
        private String mFilterName;

        public AllocateFilterCommand(String str, String str2) {
            this.mClassName = str;
            this.mFilterName = str2;
        }

        @Override // android.filterfw.io.TextGraphReader.Command
        public void execute(TextGraphReader textGraphReader) throws GraphIOException {
            try {
                textGraphReader.mCurrentFilter = textGraphReader.mFactory.createFilterByClassName(this.mClassName, this.mFilterName);
            } catch (IllegalArgumentException e2) {
                throw new GraphIOException(e2.getMessage());
            }
        }
    }

    public interface Command {
        void execute(TextGraphReader textGraphReader);
    }

    public class ConnectCommand implements Command {
        private String mSourceFilter;
        private String mSourcePort;
        private String mTargetFilter;
        private String mTargetName;

        public ConnectCommand(String str, String str2, String str3, String str4) {
            this.mSourceFilter = str;
            this.mSourcePort = str2;
            this.mTargetFilter = str3;
            this.mTargetName = str4;
        }

        @Override // android.filterfw.io.TextGraphReader.Command
        public void execute(TextGraphReader textGraphReader) {
            textGraphReader.mCurrentGraph.connect(this.mSourceFilter, this.mSourcePort, this.mTargetFilter, this.mTargetName);
        }
    }

    public class ImportPackageCommand implements Command {
        private String mPackageName;

        public ImportPackageCommand(String str) {
            this.mPackageName = str;
        }

        @Override // android.filterfw.io.TextGraphReader.Command
        public void execute(TextGraphReader textGraphReader) throws GraphIOException {
            try {
                textGraphReader.mFactory.addPackage(this.mPackageName);
            } catch (IllegalArgumentException e2) {
                throw new GraphIOException(e2.getMessage());
            }
        }
    }

    public class InitFilterCommand implements Command {
        private KeyValueMap mParams;

        public InitFilterCommand(KeyValueMap keyValueMap) {
            this.mParams = keyValueMap;
        }

        @Override // android.filterfw.io.TextGraphReader.Command
        public void execute(TextGraphReader textGraphReader) throws GraphIOException {
            try {
                textGraphReader.mCurrentFilter.initWithValueMap(this.mParams);
                textGraphReader.mCurrentGraph.addFilter(TextGraphReader.this.mCurrentFilter);
            } catch (ProtocolException e2) {
                throw new GraphIOException(e2.getMessage());
            }
        }
    }

    private void applySettings() throws GraphIOException {
        for (String str : this.mSettings.keySet()) {
            Object obj = this.mSettings.get(str);
            if (str.equals("autoBranch")) {
                expectSettingClass(str, obj, String.class);
                if (obj.equals("synced")) {
                    this.mCurrentGraph.setAutoBranchMode(1);
                } else if (obj.equals("unsynced")) {
                    this.mCurrentGraph.setAutoBranchMode(2);
                } else {
                    if (!obj.equals("off")) {
                        throw new GraphIOException("Unknown autobranch setting: " + obj + "!");
                    }
                    this.mCurrentGraph.setAutoBranchMode(0);
                }
            } else {
                if (!str.equals("discardUnconnectedOutputs")) {
                    throw new GraphIOException(c.k("Unknown @setting '", str, "'!"));
                }
                expectSettingClass(str, obj, Boolean.class);
                this.mCurrentGraph.setDiscardUnconnectedOutputs(((Boolean) obj).booleanValue());
            }
        }
    }

    private void bindExternal(String str) throws GraphIOException {
        if (!this.mReferences.containsKey(str)) {
            throw new GraphIOException(c.k("Unknown external variable '", str, "'! You must add a reference to this external in the host program using addReference(...)!"));
        }
        this.mBoundReferences.put(str, this.mReferences.get(str));
    }

    private void checkReferences() throws GraphIOException {
        for (String str : this.mReferences.keySet()) {
            if (!this.mBoundReferences.containsKey(str)) {
                throw new GraphIOException(c.k("Host program specifies reference to '", str, "', which is not declared @external in graph file!"));
            }
        }
    }

    private void executeCommands() {
        Iterator<Command> it = this.mCommands.iterator();
        while (it.hasNext()) {
            it.next().execute(this);
        }
    }

    private void expectSettingClass(String str, Object obj, Class cls) throws GraphIOException {
        if (obj.getClass() == cls) {
            return;
        }
        StringBuilder sbV = c.v("Setting '", str, "' must have a value of type ");
        sbV.append(cls.getSimpleName());
        sbV.append(", but found a value of type ");
        sbV.append(obj.getClass().getSimpleName());
        sbV.append("!");
        throw new GraphIOException(sbV.toString());
    }

    private void parseString(String str) throws GraphIOException {
        Pattern pattern;
        String str2;
        Pattern pattern2;
        PatternScanner patternScanner;
        String strEat;
        Pattern patternCompile = Pattern.compile("@[a-zA-Z]+");
        Pattern patternCompile2 = Pattern.compile("\\}");
        Pattern patternCompile3 = Pattern.compile("\\{");
        Pattern patternCompile4 = Pattern.compile("(\\s+|//[^\\n]*\\n)+");
        Pattern patternCompile5 = Pattern.compile("[a-zA-Z\\.]+");
        Pattern patternCompile6 = Pattern.compile("[a-zA-Z\\./:]+");
        Pattern patternCompile7 = Pattern.compile("\\[[a-zA-Z0-9\\-_]+\\]");
        Pattern patternCompile8 = Pattern.compile("=>");
        String str3 = ";";
        Pattern patternCompile9 = Pattern.compile(";");
        Pattern patternCompile10 = Pattern.compile("[a-zA-Z0-9\\-_]+");
        PatternScanner patternScanner2 = new PatternScanner(str, patternCompile4);
        String str4 = null;
        String strEat2 = null;
        String strSubstring = null;
        String strEat3 = null;
        char c = 0;
        while (!patternScanner2.atEnd()) {
            switch (c) {
                case 0:
                    patternCompile9 = patternCompile9;
                    Pattern pattern3 = patternCompile;
                    str3 = str3;
                    patternCompile10 = patternCompile10;
                    pattern = patternCompile5;
                    PatternScanner patternScanner3 = patternScanner2;
                    str2 = str4;
                    pattern2 = patternCompile6;
                    patternScanner = patternScanner3;
                    patternCompile = pattern3;
                    String strEat4 = patternScanner.eat(patternCompile, "<command>");
                    if (strEat4.equals("@import")) {
                        c = 1;
                    } else if (strEat4.equals("@library")) {
                        c = 2;
                    } else if (strEat4.equals("@filter")) {
                        c = 3;
                    } else if (strEat4.equals("@connect")) {
                        c = '\b';
                    } else if (strEat4.equals("@set")) {
                        c = '\r';
                    } else if (strEat4.equals("@external")) {
                        c = 14;
                    } else {
                        if (!strEat4.equals("@setting")) {
                            throw new GraphIOException(c.k("Unknown command '", strEat4, "'!"));
                        }
                        c = 15;
                    }
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner4 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner4;
                    break;
                case 1:
                    PatternScanner patternScanner5 = patternScanner2;
                    str2 = str4;
                    pattern2 = patternCompile6;
                    patternScanner = patternScanner5;
                    pattern = patternCompile5;
                    this.mCommands.add(new ImportPackageCommand(patternScanner.eat(pattern, "<package-name>")));
                    c = 16;
                    patternCompile = patternCompile;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner6 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner6;
                    break;
                case 2:
                    Pattern pattern4 = patternCompile6;
                    patternScanner = patternScanner2;
                    str2 = str4;
                    pattern2 = pattern4;
                    this.mCommands.add(new AddLibraryCommand(patternScanner.eat(pattern2, "<library-name>")));
                    pattern = patternCompile5;
                    c = 16;
                    patternCompile = patternCompile;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner7 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner7;
                    break;
                case 3:
                    patternScanner = patternScanner2;
                    patternCompile10 = patternCompile10;
                    strEat = patternScanner.eat(patternCompile10, "<class-name>");
                    c = 4;
                    str2 = strEat;
                    patternCompile = patternCompile;
                    pattern = patternCompile5;
                    pattern2 = patternCompile6;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner8 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner8;
                    break;
                case 4:
                    String str5 = str4;
                    patternScanner = patternScanner2;
                    patternCompile10 = patternCompile10;
                    this.mCommands.add(new AllocateFilterCommand(str5, patternScanner.eat(patternCompile10, "<filter-name>")));
                    c = 5;
                    strEat = str5;
                    str2 = strEat;
                    patternCompile = patternCompile;
                    pattern = patternCompile5;
                    pattern2 = patternCompile6;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner9 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner9;
                    break;
                case 5:
                    patternScanner = patternScanner2;
                    patternCompile10 = patternCompile10;
                    patternScanner.eat(patternCompile3, "{");
                    c = 6;
                    str2 = str4;
                    patternCompile = patternCompile;
                    pattern = patternCompile5;
                    pattern2 = patternCompile6;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner10 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner10;
                    break;
                case 6:
                    patternScanner = patternScanner2;
                    patternCompile10 = patternCompile10;
                    this.mCommands.add(new InitFilterCommand(readKeyValueAssignments(patternScanner, patternCompile2)));
                    c = 7;
                    str2 = str4;
                    patternCompile = patternCompile;
                    pattern = patternCompile5;
                    pattern2 = patternCompile6;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner11 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner11;
                    break;
                case 7:
                    patternScanner = patternScanner2;
                    patternCompile10 = patternCompile10;
                    patternScanner.eat(patternCompile2, "}");
                    c = 0;
                    str2 = str4;
                    patternCompile = patternCompile;
                    pattern = patternCompile5;
                    pattern2 = patternCompile6;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner12 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner12;
                    break;
                case '\b':
                    patternScanner = patternScanner2;
                    patternCompile10 = patternCompile10;
                    strEat2 = patternScanner.eat(patternCompile10, "<source-filter-name>");
                    c = '\t';
                    str2 = str4;
                    patternCompile = patternCompile;
                    pattern = patternCompile5;
                    pattern2 = patternCompile6;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner13 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner13;
                    break;
                case '\t':
                    patternScanner = patternScanner2;
                    patternCompile10 = patternCompile10;
                    String strEat5 = patternScanner.eat(patternCompile7, "[<source-port-name>]");
                    strSubstring = strEat5.substring(1, strEat5.length() - 1);
                    c = '\n';
                    str2 = str4;
                    patternCompile = patternCompile;
                    pattern = patternCompile5;
                    pattern2 = patternCompile6;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner14 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner14;
                    break;
                case '\n':
                    patternScanner = patternScanner2;
                    patternCompile10 = patternCompile10;
                    patternScanner.eat(patternCompile8, "=>");
                    c = 11;
                    str2 = str4;
                    patternCompile = patternCompile;
                    pattern = patternCompile5;
                    pattern2 = patternCompile6;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner15 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner15;
                    break;
                case 11:
                    patternScanner = patternScanner2;
                    patternCompile10 = patternCompile10;
                    strEat3 = patternScanner.eat(patternCompile10, "<target-filter-name>");
                    c = '\f';
                    str2 = str4;
                    patternCompile = patternCompile;
                    pattern = patternCompile5;
                    pattern2 = patternCompile6;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner16 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner16;
                    break;
                case '\f':
                    String strEat6 = patternScanner2.eat(patternCompile7, "[<target-port-name>]");
                    Pattern pattern5 = patternCompile6;
                    patternScanner = patternScanner2;
                    this.mCommands.add(new ConnectCommand(strEat2, strSubstring, strEat3, strEat6.substring(1, strEat6.length() - 1)));
                    str2 = str4;
                    pattern = patternCompile5;
                    pattern2 = pattern5;
                    c = 16;
                    patternCompile = patternCompile;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner17 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner17;
                    break;
                case '\r':
                    this.mBoundReferences.putAll(readKeyValueAssignments(patternScanner2, patternCompile9));
                    c = 16;
                    patternCompile10 = patternCompile10;
                    pattern = patternCompile5;
                    PatternScanner patternScanner18 = patternScanner2;
                    str2 = str4;
                    pattern2 = patternCompile6;
                    patternScanner = patternScanner18;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner19 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner19;
                    break;
                case 14:
                    bindExternal(patternScanner2.eat(patternCompile10, "<external-identifier>"));
                    c = 16;
                    patternCompile10 = patternCompile10;
                    pattern = patternCompile5;
                    PatternScanner patternScanner110 = patternScanner2;
                    str2 = str4;
                    pattern2 = patternCompile6;
                    patternScanner = patternScanner110;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner111 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner111;
                    break;
                case 15:
                    this.mSettings.putAll(readKeyValueAssignments(patternScanner2, patternCompile9));
                    c = 16;
                    patternCompile10 = patternCompile10;
                    pattern = patternCompile5;
                    PatternScanner patternScanner112 = patternScanner2;
                    str2 = str4;
                    pattern2 = patternCompile6;
                    patternScanner = patternScanner112;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner113 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner113;
                    break;
                case 16:
                    patternScanner2.eat(patternCompile9, str3);
                    c = 0;
                    patternCompile10 = patternCompile10;
                    pattern = patternCompile5;
                    PatternScanner patternScanner114 = patternScanner2;
                    str2 = str4;
                    pattern2 = patternCompile6;
                    patternScanner = patternScanner114;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner115 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner115;
                    break;
                default:
                    patternCompile10 = patternCompile10;
                    pattern = patternCompile5;
                    PatternScanner patternScanner116 = patternScanner2;
                    str2 = str4;
                    pattern2 = patternCompile6;
                    patternScanner = patternScanner116;
                    patternCompile5 = pattern;
                    patternCompile10 = patternCompile10;
                    str3 = str3;
                    patternCompile = patternCompile;
                    patternCompile9 = patternCompile9;
                    PatternScanner patternScanner117 = patternScanner;
                    patternCompile6 = pattern2;
                    str4 = str2;
                    patternScanner2 = patternScanner117;
                    break;
            }
        }
        if (c != 16 && c != 0) {
            throw new GraphIOException("Unexpected end of input!");
        }
    }

    private void reset() {
        this.mCurrentGraph = null;
        this.mCurrentFilter = null;
        this.mCommands.clear();
        this.mBoundReferences = new KeyValueMap();
        this.mSettings = new KeyValueMap();
        this.mFactory = new FilterFactory();
    }

    @Override // android.filterfw.io.GraphReader
    public FilterGraph readGraphString(String str) throws GraphIOException {
        FilterGraph filterGraph = new FilterGraph();
        reset();
        this.mCurrentGraph = filterGraph;
        parseString(str);
        applySettings();
        executeCommands();
        reset();
        return filterGraph;
    }

    @Override // android.filterfw.io.GraphReader
    public KeyValueMap readKeyValueAssignments(String str) {
        return readKeyValueAssignments(new PatternScanner(str, Pattern.compile("\\s+")), null);
    }

    private KeyValueMap readKeyValueAssignments(PatternScanner patternScanner, Pattern pattern) throws GraphIOException {
        Pattern patternCompile = Pattern.compile("=");
        Pattern patternCompile2 = Pattern.compile(";");
        Pattern patternCompile3 = Pattern.compile("[a-zA-Z]+[a-zA-Z0-9]*");
        Pattern patternCompile4 = Pattern.compile("'[^']*'|\\\"[^\\\"]*\\\"");
        Pattern patternCompile5 = Pattern.compile("[0-9]+");
        Pattern patternCompile6 = Pattern.compile("[0-9]*\\.[0-9]+f?");
        Pattern patternCompile7 = Pattern.compile("\\$[a-zA-Z]+[a-zA-Z0-9]");
        Pattern patternCompile8 = Pattern.compile("true|false");
        KeyValueMap keyValueMap = new KeyValueMap();
        char c = 0;
        String strEat = null;
        while (!patternScanner.atEnd() && (pattern == null || !patternScanner.peek(pattern))) {
            if (c == 0) {
                strEat = patternScanner.eat(patternCompile3, "<identifier>");
                c = 1;
            } else if (c == 1) {
                patternScanner.eat(patternCompile, "=");
                c = 2;
            } else if (c == 2) {
                String strTryEat = patternScanner.tryEat(patternCompile4);
                if (strTryEat != null) {
                    keyValueMap.put(strEat, strTryEat.substring(1, strTryEat.length() - 1));
                } else {
                    String strTryEat2 = patternScanner.tryEat(patternCompile7);
                    if (strTryEat2 != null) {
                        String strSubstring = strTryEat2.substring(1, strTryEat2.length());
                        KeyValueMap keyValueMap2 = this.mBoundReferences;
                        Object obj = keyValueMap2 != null ? keyValueMap2.get(strSubstring) : null;
                        if (obj != null) {
                            keyValueMap.put(strEat, obj);
                        } else {
                            throw new GraphIOException(c.k("Unknown object reference to '", strSubstring, "'!"));
                        }
                    } else {
                        String strTryEat3 = patternScanner.tryEat(patternCompile8);
                        if (strTryEat3 != null) {
                            keyValueMap.put(strEat, Boolean.valueOf(Boolean.parseBoolean(strTryEat3)));
                        } else {
                            String strTryEat4 = patternScanner.tryEat(patternCompile6);
                            if (strTryEat4 != null) {
                                keyValueMap.put(strEat, Float.valueOf(Float.parseFloat(strTryEat4)));
                            } else {
                                String strTryEat5 = patternScanner.tryEat(patternCompile5);
                                if (strTryEat5 != null) {
                                    keyValueMap.put(strEat, Integer.valueOf(Integer.parseInt(strTryEat5)));
                                } else {
                                    throw new GraphIOException(patternScanner.unexpectedTokenMessage("<value>"));
                                }
                            }
                        }
                    }
                }
                c = 3;
            } else if (c == 3) {
                patternScanner.eat(patternCompile2, ";");
                c = 0;
            }
        }
        if (c == 0 || c == 3) {
            return keyValueMap;
        }
        throw new GraphIOException("Unexpected end of assignments on line " + patternScanner.lineNo() + "!");
    }
}
