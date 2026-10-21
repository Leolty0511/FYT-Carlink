.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method public static ok([CC)Z
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    aget-char v2, p0, v0

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object p4

    move p5, p2

    :goto_0
    if-ge p5, p3, :cond_1

    .line 2
    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p6

    invoke-static {p4, p6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result p6

    if-nez p6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p5, p3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    sub-int p6, p3, p2

    const/4 v0, 0x1

    if-ne p6, v0, :cond_3

    const-string p1, ""

    return-object p1

    .line 3
    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    sub-int/2addr p5, p2

    sub-int/2addr p6, v0

    :goto_2
    if-lt p6, p5, :cond_5

    .line 4
    invoke-interface {p1, p6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p4, p2}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result p2

    if-nez p2, :cond_4

    add-int/lit8 p2, p6, 0x1

    .line 5
    invoke-virtual {v1, p6, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 p6, p6, -0x1

    goto :goto_2

    :cond_5
    return-object v1
.end method

.method public abstract getAcceptedChars()[C
.end method

.method public lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-static {p2, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result p1

    return p1
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v2, :cond_0

    if-gez v0, :cond_1

    .line 5
    :cond_0
    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v0, v1

    move v2, v0

    :cond_1
    if-eqz p4, :cond_2

    .line 6
    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz p4, :cond_3

    .line 7
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    :cond_3
    const/4 v4, 0x1

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    if-eq v2, v0, :cond_4

    .line 8
    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_4
    int-to-char p1, v3

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    return v4

    :cond_5
    const/16 v5, 0x30

    if-ne v3, v5, :cond_6

    if-ne v1, v4, :cond_6

    if-ne v2, v0, :cond_6

    if-lez v0, :cond_6

    sub-int/2addr v2, v4

    .line 11
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_6

    const/16 p1, 0x2b

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 13
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    return v4

    .line 14
    :cond_6
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
