package androidx.constraintlayout.core.state;

import android.accessibilityservice.c;
import android.net.wifi.WifiEnterpriseConfig;
import android.provider.SettingsStringUtil;
import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.google.common.base.Ascii;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class WidgetFrame {
    private static final boolean OLD_SYSTEM = true;
    public static float phone_orientation = Float.NaN;
    public float alpha;
    public int bottom;
    public float interpolatedPos;
    public int left;
    public final HashMap<String, CustomVariable> mCustom;
    public String name;
    public float pivotX;
    public float pivotY;
    public int right;
    public float rotationX;
    public float rotationY;
    public float rotationZ;
    public float scaleX;
    public float scaleY;
    public int top;
    public float translationX;
    public float translationY;
    public float translationZ;
    public int visibility;
    public ConstraintWidget widget;

    public WidgetFrame() {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
    }

    private static void add(StringBuilder sb, String str, int i2) {
        sb.append(str);
        sb.append(": ");
        sb.append(i2);
        sb.append(",\n");
    }

    public static void interpolate(int i2, int i3, WidgetFrame widgetFrame, WidgetFrame widgetFrame2, WidgetFrame widgetFrame3, Transition transition, float f2) {
        int i4;
        float f3;
        int i5;
        int i6;
        int i7;
        float f4;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        float f5 = 100.0f * f2;
        int i13 = (int) f5;
        int i14 = widgetFrame2.left;
        int i15 = widgetFrame2.top;
        int i16 = widgetFrame3.left;
        int i17 = widgetFrame3.top;
        int i18 = widgetFrame2.right - i14;
        int i19 = widgetFrame2.bottom - i15;
        int i20 = widgetFrame3.right - i16;
        int i21 = widgetFrame3.bottom - i17;
        float f6 = widgetFrame2.alpha;
        float f7 = widgetFrame3.alpha;
        if (widgetFrame2.visibility == 8) {
            i15 = (int) (i15 - (i21 / 2.0f));
            i6 = (int) (i14 - (i20 / 2.0f));
            if (Float.isNaN(f6)) {
                i5 = i21;
                i4 = i20;
                f3 = 0.0f;
            } else {
                f3 = f6;
                i4 = i20;
                i5 = i21;
            }
        } else {
            i4 = i18;
            f3 = f6;
            i5 = i19;
            i6 = i14;
        }
        if (widgetFrame3.visibility == 8) {
            i16 = (int) (i16 - (i4 / 2.0f));
            i17 = (int) (i17 - (i5 / 2.0f));
            i20 = i4;
            i21 = i5;
            if (Float.isNaN(f7)) {
                f7 = 0.0f;
            }
        }
        if (Float.isNaN(f3) && !Float.isNaN(f7)) {
            f3 = 1.0f;
        }
        if (!Float.isNaN(f3) && Float.isNaN(f7)) {
            f7 = 1.0f;
        }
        float f8 = widgetFrame2.visibility == 4 ? 0.0f : f3;
        float f9 = widgetFrame3.visibility == 4 ? 0.0f : f7;
        if (widgetFrame.widget == null || !transition.hasPositionKeyframes()) {
            i7 = i15;
            f4 = f2;
            i8 = i6;
            i9 = i16;
        } else {
            Transition.KeyPosition keyPositionFindPreviousPosition = transition.findPreviousPosition(widgetFrame.widget.stringId, i13);
            i7 = i15;
            Transition.KeyPosition keyPositionFindNextPosition = transition.findNextPosition(widgetFrame.widget.stringId, i13);
            if (keyPositionFindPreviousPosition == keyPositionFindNextPosition) {
                keyPositionFindNextPosition = null;
            }
            if (keyPositionFindPreviousPosition != null) {
                i6 = (int) (keyPositionFindPreviousPosition.f281x * i2);
                i10 = i3;
                i7 = (int) (keyPositionFindPreviousPosition.f282y * i10);
                i11 = keyPositionFindPreviousPosition.frame;
            } else {
                i10 = i3;
                i11 = 0;
            }
            i8 = i6;
            if (keyPositionFindNextPosition != null) {
                int i22 = (int) (keyPositionFindNextPosition.f281x * i2);
                int i23 = (int) (keyPositionFindNextPosition.f282y * i10);
                i12 = keyPositionFindNextPosition.frame;
                i9 = i22;
                i17 = i23;
            } else {
                i12 = 100;
                i9 = i16;
            }
            f4 = (f5 - i11) / (i12 - i11);
        }
        int i24 = i7;
        widgetFrame.widget = widgetFrame2.widget;
        int i25 = (int) (((i9 - i8) * f4) + i8);
        widgetFrame.left = i25;
        int i26 = (int) ((f4 * (i17 - i24)) + i24);
        widgetFrame.top = i26;
        float f10 = 1.0f - f2;
        widgetFrame.right = i25 + ((int) ((i20 * f2) + (i4 * f10)));
        widgetFrame.bottom = i26 + ((int) ((i21 * f2) + (f10 * i5)));
        widgetFrame.pivotX = interpolate(widgetFrame2.pivotX, widgetFrame3.pivotX, 0.5f, f2);
        widgetFrame.pivotY = interpolate(widgetFrame2.pivotY, widgetFrame3.pivotY, 0.5f, f2);
        widgetFrame.rotationX = interpolate(widgetFrame2.rotationX, widgetFrame3.rotationX, 0.0f, f2);
        widgetFrame.rotationY = interpolate(widgetFrame2.rotationY, widgetFrame3.rotationY, 0.0f, f2);
        widgetFrame.rotationZ = interpolate(widgetFrame2.rotationZ, widgetFrame3.rotationZ, 0.0f, f2);
        widgetFrame.scaleX = interpolate(widgetFrame2.scaleX, widgetFrame3.scaleX, 1.0f, f2);
        widgetFrame.scaleY = interpolate(widgetFrame2.scaleY, widgetFrame3.scaleY, 1.0f, f2);
        widgetFrame.translationX = interpolate(widgetFrame2.translationX, widgetFrame3.translationX, 0.0f, f2);
        widgetFrame.translationY = interpolate(widgetFrame2.translationY, widgetFrame3.translationY, 0.0f, f2);
        widgetFrame.translationZ = interpolate(widgetFrame2.translationZ, widgetFrame3.translationZ, 0.0f, f2);
        widgetFrame.alpha = interpolate(f8, f9, 1.0f, f2);
        Set<String> setKeySet = widgetFrame3.mCustom.keySet();
        widgetFrame.mCustom.clear();
        for (String str : setKeySet) {
            if (widgetFrame2.mCustom.containsKey(str)) {
                CustomVariable customVariable = widgetFrame2.mCustom.get(str);
                CustomVariable customVariable2 = widgetFrame3.mCustom.get(str);
                CustomVariable customVariable3 = new CustomVariable(customVariable);
                widgetFrame.mCustom.put(str, customVariable3);
                if (customVariable.numberOfInterpolatedValues() == 1) {
                    customVariable3.setValue(Float.valueOf(interpolate(customVariable.getValueToInterpolate(), customVariable2.getValueToInterpolate(), 0.0f, f2)));
                } else {
                    int iNumberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
                    float[] fArr = new float[iNumberOfInterpolatedValues];
                    float[] fArr2 = new float[iNumberOfInterpolatedValues];
                    customVariable.getValuesToInterpolate(fArr);
                    customVariable2.getValuesToInterpolate(fArr2);
                    for (int i27 = 0; i27 < iNumberOfInterpolatedValues; i27++) {
                        fArr[i27] = interpolate(fArr[i27], fArr2[i27], 0.0f, f2);
                        customVariable3.setValue(fArr);
                    }
                }
            }
        }
    }

    private void serializeAnchor(StringBuilder sb, ConstraintAnchor.Type type) {
        ConstraintAnchor anchor = this.widget.getAnchor(type);
        if (anchor == null || anchor.mTarget == null) {
            return;
        }
        sb.append("Anchor");
        sb.append(type.name());
        sb.append(": ['");
        String str = anchor.mTarget.getOwner().stringId;
        if (str == null) {
            str = "#PARENT";
        }
        sb.append(str);
        sb.append("', '");
        sb.append(anchor.mTarget.getType().name());
        sb.append("', '");
        sb.append(anchor.mMargin);
        sb.append("'],\n");
    }

    public void addCustomColor(String str, int i2) {
        setCustomAttribute(str, 902, i2);
    }

    public void addCustomFloat(String str, float f2) {
        setCustomAttribute(str, 901, f2);
    }

    public float centerX() {
        int i2 = this.left;
        return ((this.right - i2) / 2.0f) + i2;
    }

    public float centerY() {
        int i2 = this.top;
        return ((this.bottom - i2) / 2.0f) + i2;
    }

    public CustomVariable getCustomAttribute(String str) {
        return this.mCustom.get(str);
    }

    public Set<String> getCustomAttributeNames() {
        return this.mCustom.keySet();
    }

    public int getCustomColor(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getColorValue();
        }
        return -21880;
    }

    public float getCustomFloat(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getFloatValue();
        }
        return Float.NaN;
    }

    public String getId() {
        ConstraintWidget constraintWidget = this.widget;
        return constraintWidget == null ? "unknown" : constraintWidget.stringId;
    }

    public int height() {
        return Math.max(0, this.bottom - this.top);
    }

    public boolean isDefaultTransform() {
        return Float.isNaN(this.rotationX) && Float.isNaN(this.rotationY) && Float.isNaN(this.rotationZ) && Float.isNaN(this.translationX) && Float.isNaN(this.translationY) && Float.isNaN(this.translationZ) && Float.isNaN(this.scaleX) && Float.isNaN(this.scaleY) && Float.isNaN(this.alpha);
    }

    public void logv(String str) {
        String strD;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        StringBuilder sbU = c.u(".(" + stackTraceElement.getFileName() + SettingsStringUtil.DELIMITER + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName(), WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        sbU.append(hashCode() % 1000);
        String string = sbU.toString();
        if (this.widget != null) {
            StringBuilder sbU2 = c.u(string, "/");
            sbU2.append(this.widget.hashCode() % 1000);
            strD = sbU2.toString();
        } else {
            strD = c.D(string, "/NULL");
        }
        System.out.println(strD + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + str);
    }

    public void parseCustom(CLElement cLElement) {
        CLObject cLObject = (CLObject) cLElement;
        int size = cLObject.size();
        for (int i2 = 0; i2 < size; i2++) {
            CLKey cLKey = (CLKey) cLObject.get(i2);
            cLKey.content();
            CLElement value = cLKey.getValue();
            String strContent = value.content();
            if (strContent.matches("#[0-9a-fA-F]+")) {
                setCustomAttribute(cLKey.content(), 902, Integer.parseInt(strContent.substring(1), 16));
            } else if (value instanceof CLNumber) {
                setCustomAttribute(cLKey.content(), 901, value.getFloat());
            } else {
                setCustomAttribute(cLKey.content(), 903, strContent);
            }
        }
    }

    public void printCustomAttributes() {
        String strD;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        StringBuilder sbU = c.u(".(" + stackTraceElement.getFileName() + SettingsStringUtil.DELIMITER + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName(), WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        sbU.append(hashCode() % 1000);
        String string = sbU.toString();
        if (this.widget != null) {
            StringBuilder sbU2 = c.u(string, "/");
            sbU2.append(this.widget.hashCode() % 1000);
            sbU2.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            strD = sbU2.toString();
        } else {
            strD = c.D(string, "/NULL ");
        }
        HashMap<String, CustomVariable> map = this.mCustom;
        if (map != null) {
            for (String str : map.keySet()) {
                PrintStream printStream = System.out;
                StringBuilder sbR = c.r(strD);
                sbR.append(this.mCustom.get(str).toString());
                printStream.println(sbR.toString());
            }
        }
    }

    public StringBuilder serialize(StringBuilder sb) {
        return serialize(sb, false);
    }

    public void setCustomAttribute(String str, int i2, float f2) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setFloatValue(f2);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i2, f2));
        }
    }

    public void setCustomValue(CustomAttribute customAttribute, float[] fArr) {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public boolean setValue(String str, CLElement cLElement) {
        str.getClass();
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1881940865:
                if (str.equals("phone_orientation")) {
                    b2 = 0;
                }
                break;
            case -1383228885:
                if (str.equals("bottom")) {
                    b2 = 1;
                }
                break;
            case -1349088399:
                if (str.equals("custom")) {
                    b2 = 2;
                }
                break;
            case -1249320806:
                if (str.equals("rotationX")) {
                    b2 = 3;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    b2 = 4;
                }
                break;
            case -1249320804:
                if (str.equals("rotationZ")) {
                    b2 = 5;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    b2 = 6;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    b2 = 7;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    b2 = 8;
                }
                break;
            case -987906986:
                if (str.equals("pivotX")) {
                    b2 = 9;
                }
                break;
            case -987906985:
                if (str.equals("pivotY")) {
                    b2 = 10;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    b2 = Ascii.VT;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    b2 = Ascii.FF;
                }
                break;
            case 115029:
                if (str.equals("top")) {
                    b2 = Ascii.CR;
                }
                break;
            case 3317767:
                if (str.equals("left")) {
                    b2 = 14;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b2 = 15;
                }
                break;
            case 108511772:
                if (str.equals("right")) {
                    b2 = 16;
                }
                break;
            case 642850769:
                if (str.equals("interpolatedPos")) {
                    b2 = 17;
                }
                break;
        }
        switch (b2) {
            case 0:
                phone_orientation = cLElement.getFloat();
                return true;
            case 1:
                this.bottom = cLElement.getInt();
                return true;
            case 2:
                parseCustom(cLElement);
                return true;
            case 3:
                this.rotationX = cLElement.getFloat();
                return true;
            case 4:
                this.rotationY = cLElement.getFloat();
                return true;
            case 5:
                this.rotationZ = cLElement.getFloat();
                return true;
            case 6:
                this.translationX = cLElement.getFloat();
                return true;
            case 7:
                this.translationY = cLElement.getFloat();
                return true;
            case 8:
                this.translationZ = cLElement.getFloat();
                return true;
            case 9:
                this.pivotX = cLElement.getFloat();
                return true;
            case 10:
                this.pivotY = cLElement.getFloat();
                return true;
            case 11:
                this.scaleX = cLElement.getFloat();
                return true;
            case 12:
                this.scaleY = cLElement.getFloat();
                return true;
            case 13:
                this.top = cLElement.getInt();
                return true;
            case 14:
                this.left = cLElement.getInt();
                return true;
            case 15:
                this.alpha = cLElement.getFloat();
                return true;
            case 16:
                this.right = cLElement.getInt();
                return true;
            case 17:
                this.interpolatedPos = cLElement.getFloat();
                return true;
            default:
                return false;
        }
    }

    public WidgetFrame update() {
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget != null) {
            this.left = constraintWidget.getLeft();
            this.top = this.widget.getTop();
            this.right = this.widget.getRight();
            this.bottom = this.widget.getBottom();
            updateAttributes(this.widget.frame);
        }
        return this;
    }

    public void updateAttributes(WidgetFrame widgetFrame) {
        this.pivotX = widgetFrame.pivotX;
        this.pivotY = widgetFrame.pivotY;
        this.rotationX = widgetFrame.rotationX;
        this.rotationY = widgetFrame.rotationY;
        this.rotationZ = widgetFrame.rotationZ;
        this.translationX = widgetFrame.translationX;
        this.translationY = widgetFrame.translationY;
        this.translationZ = widgetFrame.translationZ;
        this.scaleX = widgetFrame.scaleX;
        this.scaleY = widgetFrame.scaleY;
        this.alpha = widgetFrame.alpha;
        this.visibility = widgetFrame.visibility;
        this.mCustom.clear();
        for (CustomVariable customVariable : widgetFrame.mCustom.values()) {
            this.mCustom.put(customVariable.getName(), customVariable.copy());
        }
    }

    public int width() {
        return Math.max(0, this.right - this.left);
    }

    public StringBuilder serialize(StringBuilder sb, boolean z2) {
        sb.append("{\n");
        add(sb, "left", this.left);
        add(sb, "top", this.top);
        add(sb, "right", this.right);
        add(sb, "bottom", this.bottom);
        add(sb, "pivotX", this.pivotX);
        add(sb, "pivotY", this.pivotY);
        add(sb, "rotationX", this.rotationX);
        add(sb, "rotationY", this.rotationY);
        add(sb, "rotationZ", this.rotationZ);
        add(sb, "translationX", this.translationX);
        add(sb, "translationY", this.translationY);
        add(sb, "translationZ", this.translationZ);
        add(sb, "scaleX", this.scaleX);
        add(sb, "scaleY", this.scaleY);
        add(sb, "alpha", this.alpha);
        add(sb, "visibility", this.visibility);
        add(sb, "interpolatedPos", this.interpolatedPos);
        if (this.widget != null) {
            for (ConstraintAnchor.Type type : ConstraintAnchor.Type.values()) {
                serializeAnchor(sb, type);
            }
        }
        if (z2) {
            add(sb, "phone_orientation", phone_orientation);
        }
        if (z2) {
            add(sb, "phone_orientation", phone_orientation);
        }
        if (this.mCustom.size() != 0) {
            sb.append("custom : {\n");
            for (String str : this.mCustom.keySet()) {
                CustomVariable customVariable = this.mCustom.get(str);
                sb.append(str);
                sb.append(": ");
                switch (customVariable.getType()) {
                    case 900:
                        sb.append(customVariable.getIntegerValue());
                        sb.append(",\n");
                        break;
                    case 901:
                    case 905:
                        sb.append(customVariable.getFloatValue());
                        sb.append(",\n");
                        break;
                    case 902:
                        sb.append("'");
                        sb.append(CustomVariable.colorString(customVariable.getIntegerValue()));
                        sb.append("',\n");
                        break;
                    case 903:
                        sb.append("'");
                        sb.append(customVariable.getStringValue());
                        sb.append("',\n");
                        break;
                    case 904:
                        sb.append("'");
                        sb.append(customVariable.getBooleanValue());
                        sb.append("',\n");
                        break;
                }
            }
            sb.append("}\n");
        }
        sb.append("}\n");
        return sb;
    }

    public void setCustomAttribute(String str, int i2, int i3) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setIntValue(i3);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i2, i3));
        }
    }

    private static void add(StringBuilder sb, String str, float f2) {
        if (Float.isNaN(f2)) {
            return;
        }
        sb.append(str);
        sb.append(": ");
        sb.append(f2);
        sb.append(",\n");
    }

    public void setCustomAttribute(String str, int i2, boolean z2) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setBooleanValue(z2);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i2, z2));
        }
    }

    public WidgetFrame update(ConstraintWidget constraintWidget) {
        if (constraintWidget == null) {
            return this;
        }
        this.widget = constraintWidget;
        update();
        return this;
    }

    public void setCustomAttribute(String str, int i2, String str2) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setStringValue(str2);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i2, str2));
        }
    }

    public WidgetFrame(ConstraintWidget constraintWidget) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = constraintWidget;
    }

    public WidgetFrame(WidgetFrame widgetFrame) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = widgetFrame.widget;
        this.left = widgetFrame.left;
        this.top = widgetFrame.top;
        this.right = widgetFrame.right;
        this.bottom = widgetFrame.bottom;
        updateAttributes(widgetFrame);
    }

    private static float interpolate(float f2, float f3, float f4, float f5) {
        boolean zIsNaN = Float.isNaN(f2);
        boolean zIsNaN2 = Float.isNaN(f3);
        if (zIsNaN && zIsNaN2) {
            return Float.NaN;
        }
        if (zIsNaN) {
            f2 = f4;
        }
        if (zIsNaN2) {
            f3 = f4;
        }
        return c.a(f3, f2, f5, f2);
    }
}
