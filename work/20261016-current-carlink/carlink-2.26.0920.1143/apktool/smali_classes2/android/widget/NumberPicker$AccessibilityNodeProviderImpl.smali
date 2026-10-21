.class Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    new-array p1, p1, [I

    .line 15
    .line 16
    iput-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 17
    .line 18
    const/high16 p1, -0x80000000

    .line 19
    .line 20
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 21
    .line 22
    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/widget/NumberPicker;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$6300(Landroid/widget/NumberPicker;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 100
    .line 101
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 102
    .line 103
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 113
    .line 114
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$6400(Landroid/widget/NumberPicker;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 122
    .line 123
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 124
    .line 125
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 126
    .line 127
    .line 128
    const/4 p2, 0x0

    .line 129
    aget p2, p1, p2

    .line 130
    .line 131
    aget p1, p1, v2

    .line 132
    .line 133
    invoke-virtual {v3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 140
    .line 141
    .line 142
    iget p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 143
    .line 144
    const/4 p2, -0x1

    .line 145
    if-eq p1, p2, :cond_2

    .line 146
    .line 147
    const/16 p1, 0x40

    .line 148
    .line 149
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 150
    .line 151
    .line 152
    :cond_2
    iget p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 153
    .line 154
    if-ne p1, p2, :cond_3

    .line 155
    .line 156
    const/16 p1, 0x80

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 159
    .line 160
    .line 161
    :cond_3
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_7

    .line 168
    .line 169
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_4

    .line 176
    .line 177
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 184
    .line 185
    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getMaxValue()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-ge p1, p2, :cond_5

    .line 190
    .line 191
    :cond_4
    const/16 p1, 0x1000

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 194
    .line 195
    .line 196
    :cond_5
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_6

    .line 203
    .line 204
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 211
    .line 212
    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getMinValue()I

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-le p1, p2, :cond_7

    .line 217
    .line 218
    :cond_6
    const/16 p1, 0x2000

    .line 219
    .line 220
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 221
    .line 222
    .line 223
    :cond_7
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/widget/Button;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 15
    .line 16
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$6100(Landroid/widget/NumberPicker;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    .line 60
    .line 61
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 62
    .line 63
    invoke-static {p3, v1}, Landroid/widget/NumberPicker;->access$6200(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 74
    .line 75
    iget-object p4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 76
    .line 77
    invoke-virtual {p4, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 78
    .line 79
    .line 80
    const/4 p4, 0x0

    .line 81
    aget p4, p3, p4

    .line 82
    .line 83
    aget p2, p3, p2

    .line 84
    .line 85
    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 89
    .line 90
    .line 91
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 92
    .line 93
    if-eq p2, p1, :cond_0

    .line 94
    .line 95
    const/16 p2, 0x40

    .line 96
    .line 97
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 98
    .line 99
    .line 100
    :cond_0
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 101
    .line 102
    if-ne p2, p1, :cond_1

    .line 103
    .line 104
    const/16 p1, 0x80

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 107
    .line 108
    .line 109
    :cond_1
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    const/16 p1, 0x10

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 120
    .line 121
    .line 122
    :cond_2
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 18
    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x40

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x80

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 41
    .line 42
    invoke-static {p1, v1}, Landroid/widget/NumberPicker;->access$6000(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 53
    .line 54
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 57
    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    aget p2, p1, p2

    .line 61
    .line 62
    const/4 p3, 0x1

    .line 63
    aget p1, p1, p3

    .line 64
    .line 65
    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_5

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void

    .line 43
    :cond_2
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 44
    .line 45
    invoke-static {p2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 82
    .line 83
    invoke-static {p2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_0
    return-void

    .line 119
    :cond_5
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_6
    return-void
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$6500(Landroid/widget/NumberPicker;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$6600(Landroid/widget/NumberPicker;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->access$6700(Landroid/widget/NumberPicker;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$6800(Landroid/widget/NumberPicker;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-lt v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 32
    .line 33
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->access$6900(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 47
    .line 48
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 53
    .line 54
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$6800(Landroid/widget/NumberPicker;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    sub-int/2addr v0, v2

    .line 59
    aget-object v0, v1, v0

    .line 60
    .line 61
    :goto_0
    return-object v0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    return-object v0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$6500(Landroid/widget/NumberPicker;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$6600(Landroid/widget/NumberPicker;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->access$6700(Landroid/widget/NumberPicker;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-gt v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 32
    .line 33
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->access$6900(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 47
    .line 48
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 53
    .line 54
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$6800(Landroid/widget/NumberPicker;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    sub-int/2addr v0, v2

    .line 59
    aget-object v0, v1, v0

    .line 60
    .line 61
    :goto_0
    return-object v0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    return-object v0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$5800(Landroid/widget/NumberPicker;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-class v0, Landroid/widget/Button;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$5900(Landroid/widget/NumberPicker;)Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 57
    .line 58
    .line 59
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 60
    .line 61
    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 65
    .line 66
    invoke-virtual {p1, p1, p2}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$5700(Landroid/widget/NumberPicker;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 46
    .line 47
    invoke-virtual {v0, v0, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 v1, 0x3

    .line 19
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 24
    .line 25
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$3400(Landroid/widget/NumberPicker;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$3500(Landroid/widget/NumberPicker;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 36
    .line 37
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$3600(Landroid/widget/NumberPicker;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3700(Landroid/widget/NumberPicker;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 48
    .line 49
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$3800(Landroid/widget/NumberPicker;)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    sub-int/2addr v0, v5

    .line 54
    add-int v5, v0, p1

    .line 55
    .line 56
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 57
    .line 58
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$1800(Landroid/widget/NumberPicker;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 63
    .line 64
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3900(Landroid/widget/NumberPicker;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int v6, v0, p1

    .line 69
    .line 70
    move-object v0, p0

    .line 71
    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_1
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 77
    .line 78
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$4000(Landroid/widget/NumberPicker;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 83
    .line 84
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1800(Landroid/widget/NumberPicker;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 89
    .line 90
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$3900(Landroid/widget/NumberPicker;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    add-int/2addr v1, v0

    .line 95
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 96
    .line 97
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$4100(Landroid/widget/NumberPicker;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 102
    .line 103
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$4200(Landroid/widget/NumberPicker;)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 108
    .line 109
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$4300(Landroid/widget/NumberPicker;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    sub-int/2addr v2, v3

    .line 114
    add-int/2addr v2, v0

    .line 115
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 116
    .line 117
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 122
    .line 123
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$3900(Landroid/widget/NumberPicker;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    sub-int/2addr v0, v3

    .line 128
    invoke-direct {p0, p1, v1, v2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1

    .line 133
    :cond_2
    const/4 v1, 0x1

    .line 134
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 139
    .line 140
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$4400(Landroid/widget/NumberPicker;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 145
    .line 146
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 151
    .line 152
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3900(Landroid/widget/NumberPicker;)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    sub-int v4, p1, v0

    .line 157
    .line 158
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 159
    .line 160
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$4500(Landroid/widget/NumberPicker;)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 165
    .line 166
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$4600(Landroid/widget/NumberPicker;)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 171
    .line 172
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$4700(Landroid/widget/NumberPicker;)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    sub-int/2addr v0, v5

    .line 177
    add-int v5, v0, p1

    .line 178
    .line 179
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 180
    .line 181
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$4800(Landroid/widget/NumberPicker;)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 186
    .line 187
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$4900(Landroid/widget/NumberPicker;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 192
    .line 193
    invoke-static {v6}, Landroid/widget/NumberPicker;->access$5000(Landroid/widget/NumberPicker;)I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    sub-int/2addr v0, v6

    .line 198
    add-int v6, v0, p1

    .line 199
    .line 200
    move-object v0, p0

    .line 201
    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    return-object p1

    .line 206
    :cond_3
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 207
    .line 208
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$2600(Landroid/widget/NumberPicker;)I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 213
    .line 214
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$2700(Landroid/widget/NumberPicker;)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 219
    .line 220
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2800(Landroid/widget/NumberPicker;)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 225
    .line 226
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$2900(Landroid/widget/NumberPicker;)I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 231
    .line 232
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$3000(Landroid/widget/NumberPicker;)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    sub-int/2addr v2, v3

    .line 237
    add-int/2addr v2, v1

    .line 238
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 239
    .line 240
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$3100(Landroid/widget/NumberPicker;)I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 245
    .line 246
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$3200(Landroid/widget/NumberPicker;)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 251
    .line 252
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$3300(Landroid/widget/NumberPicker;)I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    sub-int/2addr v3, v4

    .line 257
    add-int/2addr v3, v1

    .line 258
    invoke-direct {p0, p1, v0, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x3

    .line 23
    const/4 v4, 0x2

    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq p2, v2, :cond_2

    .line 26
    .line 27
    if-eq p2, v5, :cond_1

    .line 28
    .line 29
    if-eq p2, v4, :cond_1

    .line 30
    .line 31
    if-eq p2, v3, :cond_1

    .line 32
    .line 33
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-direct {p0, v0, p2, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0, v4, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0, v5, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    const/high16 v1, -0x80000000

    .line 3
    .line 4
    const/16 v2, 0x80

    .line 5
    .line 6
    const/16 v3, 0x40

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eq p1, v0, :cond_1c

    .line 11
    .line 12
    const/high16 v0, 0x10000

    .line 13
    .line 14
    const v6, 0x8000

    .line 15
    .line 16
    .line 17
    const/16 v7, 0x10

    .line 18
    .line 19
    if-eq p1, v4, :cond_15

    .line 20
    .line 21
    const/4 v8, 0x2

    .line 22
    if-eq p1, v8, :cond_8

    .line 23
    .line 24
    const/4 v8, 0x3

    .line 25
    if-eq p1, v8, :cond_0

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    if-eq p2, v7, :cond_5

    .line 30
    .line 31
    if-eq p2, v3, :cond_3

    .line 32
    .line 33
    if-eq p2, v2, :cond_1

    .line 34
    .line 35
    return v5

    .line 36
    :cond_1
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 37
    .line 38
    if-ne p2, p1, :cond_2

    .line 39
    .line 40
    iput v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 46
    .line 47
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$5600(Landroid/widget/NumberPicker;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 52
    .line 53
    invoke-static {p3}, Landroid/widget/NumberPicker;->access$1800(Landroid/widget/NumberPicker;)I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    invoke-virtual {p1, v5, v5, p2, p3}, Landroid/view/View;->invalidate(IIII)V

    .line 58
    .line 59
    .line 60
    return v4

    .line 61
    :cond_2
    return v5

    .line 62
    :cond_3
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 63
    .line 64
    if-eq p2, p1, :cond_4

    .line 65
    .line 66
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 67
    .line 68
    invoke-virtual {p0, p1, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 72
    .line 73
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$5500(Landroid/widget/NumberPicker;)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 78
    .line 79
    invoke-static {p3}, Landroid/widget/NumberPicker;->access$1800(Landroid/widget/NumberPicker;)I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    invoke-virtual {p1, v5, v5, p2, p3}, Landroid/view/View;->invalidate(IIII)V

    .line 84
    .line 85
    .line 86
    return v4

    .line 87
    :cond_4
    return v5

    .line 88
    :cond_5
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_7

    .line 95
    .line 96
    if-ne p1, v4, :cond_6

    .line 97
    .line 98
    move v5, v4

    .line 99
    :cond_6
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 100
    .line 101
    invoke-static {p2, v5}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 105
    .line 106
    .line 107
    return v4

    .line 108
    :cond_7
    return v5

    .line 109
    :cond_8
    if-eq p2, v4, :cond_13

    .line 110
    .line 111
    if-eq p2, v8, :cond_11

    .line 112
    .line 113
    if-eq p2, v7, :cond_f

    .line 114
    .line 115
    const/16 v7, 0x20

    .line 116
    .line 117
    if-eq p2, v7, :cond_d

    .line 118
    .line 119
    if-eq p2, v3, :cond_b

    .line 120
    .line 121
    if-eq p2, v2, :cond_9

    .line 122
    .line 123
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 124
    .line 125
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    return p1

    .line 134
    :cond_9
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 135
    .line 136
    if-ne p2, p1, :cond_a

    .line 137
    .line 138
    iput v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 139
    .line 140
    invoke-virtual {p0, p1, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 144
    .line 145
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 150
    .line 151
    .line 152
    return v4

    .line 153
    :cond_a
    return v5

    .line 154
    :cond_b
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 155
    .line 156
    if-eq p2, p1, :cond_c

    .line 157
    .line 158
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 159
    .line 160
    invoke-virtual {p0, p1, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 164
    .line 165
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 170
    .line 171
    .line 172
    return v4

    .line 173
    :cond_c
    return v5

    .line 174
    :cond_d
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_e

    .line 181
    .line 182
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->performLongClick()Z

    .line 185
    .line 186
    .line 187
    return v4

    .line 188
    :cond_e
    return v5

    .line 189
    :cond_f
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_10

    .line 196
    .line 197
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->performClick()Z

    .line 200
    .line 201
    .line 202
    return v4

    .line 203
    :cond_10
    return v5

    .line 204
    :cond_11
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_12

    .line 211
    .line 212
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 213
    .line 214
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_12

    .line 223
    .line 224
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 225
    .line 226
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 231
    .line 232
    .line 233
    return v4

    .line 234
    :cond_12
    return v5

    .line 235
    :cond_13
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_14

    .line 242
    .line 243
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 244
    .line 245
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-nez p1, :cond_14

    .line 254
    .line 255
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 256
    .line 257
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    return p1

    .line 266
    :cond_14
    return v5

    .line 267
    :cond_15
    if-eq p2, v7, :cond_1a

    .line 268
    .line 269
    if-eq p2, v3, :cond_18

    .line 270
    .line 271
    if-eq p2, v2, :cond_16

    .line 272
    .line 273
    return v5

    .line 274
    :cond_16
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 275
    .line 276
    if-ne p2, p1, :cond_17

    .line 277
    .line 278
    iput v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 279
    .line 280
    invoke-virtual {p0, p1, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 284
    .line 285
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)I

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 290
    .line 291
    invoke-static {p3}, Landroid/widget/NumberPicker;->access$5300(Landroid/widget/NumberPicker;)I

    .line 292
    .line 293
    .line 294
    move-result p3

    .line 295
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 296
    .line 297
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$5400(Landroid/widget/NumberPicker;)I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    invoke-virtual {p1, v5, p2, p3, v0}, Landroid/view/View;->invalidate(IIII)V

    .line 302
    .line 303
    .line 304
    return v4

    .line 305
    :cond_17
    return v5

    .line 306
    :cond_18
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 307
    .line 308
    if-eq p2, p1, :cond_19

    .line 309
    .line 310
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 311
    .line 312
    invoke-virtual {p0, p1, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 313
    .line 314
    .line 315
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 316
    .line 317
    invoke-static {p1}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)I

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    iget-object p3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 322
    .line 323
    invoke-static {p3}, Landroid/widget/NumberPicker;->access$5100(Landroid/widget/NumberPicker;)I

    .line 324
    .line 325
    .line 326
    move-result p3

    .line 327
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 328
    .line 329
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$5200(Landroid/widget/NumberPicker;)I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-virtual {p1, v5, p2, p3, v0}, Landroid/view/View;->invalidate(IIII)V

    .line 334
    .line 335
    .line 336
    return v4

    .line 337
    :cond_19
    return v5

    .line 338
    :cond_1a
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 339
    .line 340
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    .line 341
    .line 342
    .line 343
    move-result p2

    .line 344
    if-eqz p2, :cond_1b

    .line 345
    .line 346
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 347
    .line 348
    invoke-static {p2, v4}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 352
    .line 353
    .line 354
    return v4

    .line 355
    :cond_1b
    return v5

    .line 356
    :cond_1c
    if-eq p2, v3, :cond_25

    .line 357
    .line 358
    if-eq p2, v2, :cond_23

    .line 359
    .line 360
    const/16 v0, 0x1000

    .line 361
    .line 362
    if-eq p2, v0, :cond_20

    .line 363
    .line 364
    const/16 v0, 0x2000

    .line 365
    .line 366
    if-eq p2, v0, :cond_1d

    .line 367
    .line 368
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    return p1

    .line 373
    :cond_1d
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 374
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    if-eqz p1, :cond_1f

    .line 380
    .line 381
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 382
    .line 383
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    if-nez p1, :cond_1e

    .line 388
    .line 389
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 390
    .line 391
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 396
    .line 397
    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getMinValue()I

    .line 398
    .line 399
    .line 400
    move-result p2

    .line 401
    if-le p1, p2, :cond_1f

    .line 402
    .line 403
    :cond_1e
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 404
    .line 405
    invoke-static {p1, v5}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 406
    .line 407
    .line 408
    return v4

    .line 409
    :cond_1f
    return v5

    .line 410
    :cond_20
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 411
    .line 412
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    if-eqz p1, :cond_22

    .line 417
    .line 418
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 419
    .line 420
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    if-nez p1, :cond_21

    .line 425
    .line 426
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 427
    .line 428
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    iget-object p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 433
    .line 434
    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getMaxValue()I

    .line 435
    .line 436
    .line 437
    move-result p2

    .line 438
    if-ge p1, p2, :cond_22

    .line 439
    .line 440
    :cond_21
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 441
    .line 442
    invoke-static {p1, v4}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 443
    .line 444
    .line 445
    return v4

    .line 446
    :cond_22
    return v5

    .line 447
    :cond_23
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 448
    .line 449
    if-ne p2, p1, :cond_24

    .line 450
    .line 451
    iput v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 452
    .line 453
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 454
    .line 455
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 456
    .line 457
    .line 458
    return v4

    .line 459
    :cond_24
    return v5

    .line 460
    :cond_25
    iget p2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 461
    .line 462
    if-eq p2, p1, :cond_26

    .line 463
    .line 464
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 465
    .line 466
    iget-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 467
    .line 468
    invoke-virtual {p1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 469
    .line 470
    .line 471
    return v4

    .line 472
    :cond_26
    return v5
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0, p2}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_0
    return-void
.end method
