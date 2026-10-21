package android.text.method;

import android.text.Layout;
import android.text.Spannable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class BaseMovementMethod implements MovementMethod {
    private int getBottomLine(TextView textView) {
        return textView.getLayout().getLineForVertical(textView.getScrollY() + getInnerHeight(textView));
    }

    private int getCharacterWidth(TextView textView) {
        return (int) Math.ceil(textView.getPaint().getFontSpacing());
    }

    private int getInnerHeight(TextView textView) {
        return (textView.getHeight() - textView.getTotalPaddingTop()) - textView.getTotalPaddingBottom();
    }

    private int getInnerWidth(TextView textView) {
        return (textView.getWidth() - textView.getTotalPaddingLeft()) - textView.getTotalPaddingRight();
    }

    private int getScrollBoundsLeft(TextView textView) {
        Layout layout = textView.getLayout();
        int topLine = getTopLine(textView);
        int bottomLine = getBottomLine(textView);
        if (topLine > bottomLine) {
            return 0;
        }
        int i2 = Integer.MAX_VALUE;
        while (topLine <= bottomLine) {
            int iFloor = (int) Math.floor(layout.getLineLeft(topLine));
            if (iFloor < i2) {
                i2 = iFloor;
            }
            topLine++;
        }
        return i2;
    }

    private int getScrollBoundsRight(TextView textView) {
        Layout layout = textView.getLayout();
        int topLine = getTopLine(textView);
        int bottomLine = getBottomLine(textView);
        if (topLine > bottomLine) {
            return 0;
        }
        int i2 = Integer.MIN_VALUE;
        while (topLine <= bottomLine) {
            int iCeil = (int) Math.ceil(layout.getLineRight(topLine));
            if (iCeil > i2) {
                i2 = iCeil;
            }
            topLine++;
        }
        return i2;
    }

    private int getTopLine(TextView textView) {
        return textView.getLayout().getLineForVertical(textView.getScrollY());
    }

    public boolean bottom(TextView textView, Spannable spannable) {
        return false;
    }

    @Override // android.text.method.MovementMethod
    public boolean canSelectArbitrarily() {
        return false;
    }

    public boolean down(TextView textView, Spannable spannable) {
        return false;
    }

    public boolean end(TextView textView, Spannable spannable) {
        return false;
    }

    public int getMovementMetaState(Spannable spannable, KeyEvent keyEvent) {
        return KeyEvent.normalizeMetaState(MetaKeyKeyListener.getMetaState(spannable, keyEvent) & (-1537)) & (-194);
    }

    public boolean handleMovementKey(TextView textView, Spannable spannable, int i2, int i3, KeyEvent keyEvent) {
        if (i2 == 92) {
            if (KeyEvent.metaStateHasNoModifiers(i3)) {
                return pageUp(textView, spannable);
            }
            if (KeyEvent.metaStateHasModifiers(i3, 2)) {
                return top(textView, spannable);
            }
            return false;
        }
        if (i2 == 93) {
            if (KeyEvent.metaStateHasNoModifiers(i3)) {
                return pageDown(textView, spannable);
            }
            if (KeyEvent.metaStateHasModifiers(i3, 2)) {
                return bottom(textView, spannable);
            }
            return false;
        }
        if (i2 == 122) {
            if (KeyEvent.metaStateHasNoModifiers(i3)) {
                return home(textView, spannable);
            }
            if (KeyEvent.metaStateHasModifiers(i3, 4096)) {
                return top(textView, spannable);
            }
            return false;
        }
        if (i2 == 123) {
            if (KeyEvent.metaStateHasNoModifiers(i3)) {
                return end(textView, spannable);
            }
            if (KeyEvent.metaStateHasModifiers(i3, 4096)) {
                return bottom(textView, spannable);
            }
            return false;
        }
        switch (i2) {
            case 19:
                if (KeyEvent.metaStateHasNoModifiers(i3)) {
                    return up(textView, spannable);
                }
                if (KeyEvent.metaStateHasModifiers(i3, 2)) {
                    return top(textView, spannable);
                }
                return false;
            case 20:
                if (KeyEvent.metaStateHasNoModifiers(i3)) {
                    return down(textView, spannable);
                }
                if (KeyEvent.metaStateHasModifiers(i3, 2)) {
                    return bottom(textView, spannable);
                }
                return false;
            case 21:
                if (KeyEvent.metaStateHasNoModifiers(i3)) {
                    return left(textView, spannable);
                }
                if (KeyEvent.metaStateHasModifiers(i3, 4096)) {
                    return leftWord(textView, spannable);
                }
                if (KeyEvent.metaStateHasModifiers(i3, 2)) {
                    return lineStart(textView, spannable);
                }
                return false;
            case 22:
                if (KeyEvent.metaStateHasNoModifiers(i3)) {
                    return right(textView, spannable);
                }
                if (KeyEvent.metaStateHasModifiers(i3, 4096)) {
                    return rightWord(textView, spannable);
                }
                if (KeyEvent.metaStateHasModifiers(i3, 2)) {
                    return lineEnd(textView, spannable);
                }
                return false;
            default:
                return false;
        }
    }

    public boolean home(TextView textView, Spannable spannable) {
        return false;
    }

    @Override // android.text.method.MovementMethod
    public void initialize(TextView textView, Spannable spannable) {
    }

    public boolean left(TextView textView, Spannable spannable) {
        return false;
    }

    public boolean leftWord(TextView textView, Spannable spannable) {
        return false;
    }

    public boolean lineEnd(TextView textView, Spannable spannable) {
        return false;
    }

    public boolean lineStart(TextView textView, Spannable spannable) {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x005f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0063  */
    /* JADX WARN: Code duplicated, block: B:27:? A[RETURN, SYNTHETIC] */
    @Override // android.text.method.MovementMethod
    public boolean onGenericMotionEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        float f2;
        float axisValue;
        boolean zScrollRight;
        boolean zScrollDown;
        boolean z2 = false;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8) {
            return false;
        }
        if ((motionEvent.getMetaState() & 1) != 0) {
            axisValue = motionEvent.getAxisValue(9);
            f2 = 0.0f;
        } else {
            f2 = -motionEvent.getAxisValue(9);
            axisValue = motionEvent.getAxisValue(10);
        }
        if (axisValue >= 0.0f) {
            if (axisValue > 0.0f) {
                zScrollRight = scrollRight(textView, spannable, (int) Math.ceil(axisValue));
            }
            if (f2 < 0.0f) {
                zScrollDown = scrollUp(textView, spannable, (int) Math.ceil(-f2));
            } else {
                if (f2 > 0.0f) {
                    return z2;
                }
                zScrollDown = scrollDown(textView, spannable, (int) Math.ceil(f2));
            }
            return z2 | zScrollDown;
        }
        zScrollRight = scrollLeft(textView, spannable, (int) Math.ceil(-axisValue));
        z2 = false | zScrollRight;
        if (f2 < 0.0f) {
            zScrollDown = scrollUp(textView, spannable, (int) Math.ceil(-f2));
        } else {
            if (f2 > 0.0f) {
                return z2;
            }
            zScrollDown = scrollDown(textView, spannable, (int) Math.ceil(f2));
        }
        return z2 | zScrollDown;
    }

    @Override // android.text.method.MovementMethod
    public boolean onKeyDown(TextView textView, Spannable spannable, int i2, KeyEvent keyEvent) {
        boolean zHandleMovementKey = handleMovementKey(textView, spannable, i2, getMovementMetaState(spannable, keyEvent), keyEvent);
        if (zHandleMovementKey) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(spannable);
            MetaKeyKeyListener.resetLockedMeta(spannable);
        }
        return zHandleMovementKey;
    }

    @Override // android.text.method.MovementMethod
    public boolean onKeyOther(TextView textView, Spannable spannable, KeyEvent keyEvent) {
        int movementMetaState = getMovementMetaState(spannable, keyEvent);
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 0 || keyEvent.getAction() != 2) {
            return false;
        }
        int repeatCount = keyEvent.getRepeatCount();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < repeatCount && handleMovementKey(textView, spannable, keyCode, movementMetaState, keyEvent)) {
            i2++;
            z2 = true;
        }
        if (z2) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(spannable);
            MetaKeyKeyListener.resetLockedMeta(spannable);
        }
        return z2;
    }

    @Override // android.text.method.MovementMethod
    public boolean onKeyUp(TextView textView, Spannable spannable, int i2, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.text.method.MovementMethod
    public void onTakeFocus(TextView textView, Spannable spannable, int i2) {
    }

    @Override // android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        return false;
    }

    @Override // android.text.method.MovementMethod
    public boolean onTrackballEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        return false;
    }

    public boolean pageDown(TextView textView, Spannable spannable) {
        return false;
    }

    public boolean pageUp(TextView textView, Spannable spannable) {
        return false;
    }

    public boolean right(TextView textView, Spannable spannable) {
        return false;
    }

    public boolean rightWord(TextView textView, Spannable spannable) {
        return false;
    }

    public boolean scrollBottom(TextView textView, Spannable spannable) {
        Layout layout = textView.getLayout();
        int lineCount = layout.getLineCount();
        if (getBottomLine(textView) > lineCount - 1) {
            return false;
        }
        Touch.scrollTo(textView, layout, textView.getScrollX(), layout.getLineTop(lineCount) - getInnerHeight(textView));
        return true;
    }

    public boolean scrollDown(TextView textView, Spannable spannable, int i2) {
        Layout layout = textView.getLayout();
        int innerHeight = getInnerHeight(textView);
        int scrollY = textView.getScrollY() + innerHeight;
        int lineForVertical = layout.getLineForVertical(scrollY);
        int i3 = lineForVertical + 1;
        if (layout.getLineTop(i3) < scrollY + 1) {
            lineForVertical = i3;
        }
        int lineCount = layout.getLineCount() - 1;
        if (lineForVertical > lineCount) {
            return false;
        }
        Touch.scrollTo(textView, layout, textView.getScrollX(), layout.getLineTop(Math.min((lineForVertical + i2) - 1, lineCount) + 1) - innerHeight);
        return true;
    }

    public boolean scrollLeft(TextView textView, Spannable spannable, int i2) {
        int scrollBoundsLeft = getScrollBoundsLeft(textView);
        int scrollX = textView.getScrollX();
        if (scrollX <= scrollBoundsLeft) {
            return false;
        }
        textView.scrollTo(Math.max(scrollX - (getCharacterWidth(textView) * i2), scrollBoundsLeft), textView.getScrollY());
        return true;
    }

    public boolean scrollLineEnd(TextView textView, Spannable spannable) {
        int scrollBoundsRight = getScrollBoundsRight(textView) - getInnerWidth(textView);
        if (textView.getScrollX() >= scrollBoundsRight) {
            return false;
        }
        textView.scrollTo(scrollBoundsRight, textView.getScrollY());
        return true;
    }

    public boolean scrollLineStart(TextView textView, Spannable spannable) {
        int scrollBoundsLeft = getScrollBoundsLeft(textView);
        if (textView.getScrollX() <= scrollBoundsLeft) {
            return false;
        }
        textView.scrollTo(scrollBoundsLeft, textView.getScrollY());
        return true;
    }

    public boolean scrollPageDown(TextView textView, Spannable spannable) {
        Layout layout = textView.getLayout();
        int innerHeight = getInnerHeight(textView);
        int lineForVertical = layout.getLineForVertical(textView.getScrollY() + innerHeight + innerHeight);
        if (lineForVertical > layout.getLineCount() - 1) {
            return false;
        }
        Touch.scrollTo(textView, layout, textView.getScrollX(), layout.getLineTop(lineForVertical + 1) - innerHeight);
        return true;
    }

    public boolean scrollPageUp(TextView textView, Spannable spannable) {
        Layout layout = textView.getLayout();
        int lineForVertical = layout.getLineForVertical(textView.getScrollY() - getInnerHeight(textView));
        if (lineForVertical < 0) {
            return false;
        }
        Touch.scrollTo(textView, layout, textView.getScrollX(), layout.getLineTop(lineForVertical));
        return true;
    }

    public boolean scrollRight(TextView textView, Spannable spannable, int i2) {
        int scrollBoundsRight = getScrollBoundsRight(textView) - getInnerWidth(textView);
        int scrollX = textView.getScrollX();
        if (scrollX >= scrollBoundsRight) {
            return false;
        }
        textView.scrollTo(Math.min((getCharacterWidth(textView) * i2) + scrollX, scrollBoundsRight), textView.getScrollY());
        return true;
    }

    public boolean scrollTop(TextView textView, Spannable spannable) {
        Layout layout = textView.getLayout();
        if (getTopLine(textView) < 0) {
            return false;
        }
        Touch.scrollTo(textView, layout, textView.getScrollX(), layout.getLineTop(0));
        return true;
    }

    public boolean scrollUp(TextView textView, Spannable spannable, int i2) {
        Layout layout = textView.getLayout();
        int scrollY = textView.getScrollY();
        int lineForVertical = layout.getLineForVertical(scrollY);
        if (layout.getLineTop(lineForVertical) == scrollY) {
            lineForVertical--;
        }
        if (lineForVertical < 0) {
            return false;
        }
        Touch.scrollTo(textView, layout, textView.getScrollX(), layout.getLineTop(Math.max((lineForVertical - i2) + 1, 0)));
        return true;
    }

    public boolean top(TextView textView, Spannable spannable) {
        return false;
    }

    public boolean up(TextView textView, Spannable spannable) {
        return false;
    }
}
