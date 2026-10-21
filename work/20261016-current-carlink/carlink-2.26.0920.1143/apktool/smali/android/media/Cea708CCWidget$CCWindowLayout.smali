.class Landroid/media/Cea708CCWidget$CCWindowLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCWindowLayout"
.end annotation


# static fields
.field private static final ANCHOR_HORIZONTAL_16_9_MAX:I = 0xd1

.field private static final ANCHOR_HORIZONTAL_MODE_CENTER:I = 0x1

.field private static final ANCHOR_HORIZONTAL_MODE_LEFT:I = 0x0

.field private static final ANCHOR_HORIZONTAL_MODE_RIGHT:I = 0x2

.field private static final ANCHOR_MODE_DIVIDER:I = 0x3

.field private static final ANCHOR_RELATIVE_POSITIONING_MAX:I = 0x63

.field private static final ANCHOR_VERTICAL_MAX:I = 0x4a

.field private static final ANCHOR_VERTICAL_MODE_BOTTOM:I = 0x2

.field private static final ANCHOR_VERTICAL_MODE_CENTER:I = 0x1

.field private static final ANCHOR_VERTICAL_MODE_TOP:I = 0x0

.field private static final MAX_COLUMN_COUNT_16_9:I = 0x2a

.field private static final PROPORTION_PEN_SIZE_LARGE:F = 1.25f

.field private static final PROPORTION_PEN_SIZE_SMALL:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "CCWindowLayout"


# instance fields
.field private final mBuilder:Landroid/text/SpannableStringBuilder;

.field private mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

.field private mCCView:Landroid/media/Cea708CCWidget$CCView;

.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private mCaptionWindowId:I

.field private final mCharacterStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mFontScale:F

.field private mLastCaptionLayoutHeight:I

.field private mLastCaptionLayoutWidth:I

.field private mRow:I

.field private mRowLimit:I

.field private mTextSize:F

.field private mWidestChar:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 6
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    const/4 p2, -0x1

    .line 8
    iput p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 9
    new-instance p2, Landroid/media/Cea708CCWidget$CCView;

    invoke-direct {p2, p1}, Landroid/media/Cea708CCWidget$CCView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 10
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11
    iget-object p3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "captioning"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    .line 13
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    iput p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 14
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 15
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    return-void
.end method

.method private getScreenColumnCount()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method private updateText(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-lez p2, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/text/style/CharacterStyle;

    .line 44
    .line 45
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/16 v3, 0x21

    .line 52
    .line 53
    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "\n"

    .line 64
    .line 65
    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    array-length v0, p1

    .line 70
    iget v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    sub-int/2addr v0, v1

    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    array-length v2, p1

    .line 81
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    sub-int/2addr v0, p1

    .line 100
    invoke-virtual {p2, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    add-int/lit8 p1, p1, -0x1

    .line 110
    .line 111
    move p2, v1

    .line 112
    :goto_1
    const/16 v0, 0x20

    .line 113
    .line 114
    if-gt p2, p1, :cond_2

    .line 115
    .line 116
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 117
    .line 118
    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-gt v2, v0, :cond_2

    .line 123
    .line 124
    add-int/lit8 p2, p2, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    move v2, p1

    .line 128
    :goto_2
    if-lt v2, p2, :cond_3

    .line 129
    .line 130
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 131
    .line 132
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-gt v3, v0, :cond_3

    .line 137
    .line 138
    add-int/lit8 v2, v2, -0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    if-nez p2, :cond_4

    .line 142
    .line 143
    if-ne v2, p1, :cond_4

    .line 144
    .line 145
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 146
    .line 147
    iget-object p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 154
    .line 155
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 161
    .line 162
    .line 163
    if-ge v2, p1, :cond_5

    .line 164
    .line 165
    add-int/lit8 v2, v2, 0x1

    .line 166
    .line 167
    add-int/lit8 p1, p1, 0x1

    .line 168
    .line 169
    invoke-virtual {v0, v2, p1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 170
    .line 171
    .line 172
    :cond_5
    if-lez p2, :cond_6

    .line 173
    .line 174
    invoke-virtual {v0, v1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 175
    .line 176
    .line 177
    :cond_6
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    :goto_3
    return-void
.end method

.method private updateTextSize()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const/high16 v3, 0x437f0000    # 255.0f

    .line 46
    .line 47
    :goto_1
    cmpg-float v4, v2, v3

    .line 48
    .line 49
    if-gez v4, :cond_3

    .line 50
    .line 51
    add-float v4, v2, v3

    .line 52
    .line 53
    const/high16 v5, 0x40000000    # 2.0f

    .line 54
    .line 55
    div-float/2addr v4, v5

    .line 56
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    iget-object v6, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    int-to-float v6, v6

    .line 70
    const v7, 0x3f4ccccd    # 0.8f

    .line 71
    .line 72
    .line 73
    mul-float/2addr v6, v7

    .line 74
    cmpl-float v5, v6, v5

    .line 75
    .line 76
    const v6, 0x3c23d70a    # 0.01f

    .line 77
    .line 78
    .line 79
    if-lez v5, :cond_2

    .line 80
    .line 81
    add-float/2addr v4, v6

    .line 82
    move v2, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    sub-float/2addr v4, v6

    .line 85
    move v3, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 88
    .line 89
    mul-float/2addr v3, v0

    .line 90
    iput v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    .line 91
    .line 92
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private updateWidestChar()V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    const-string v1, "ISO-8859-1"

    .line 16
    .line 17
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    const/16 v5, 0x100

    .line 25
    .line 26
    if-ge v4, v5, :cond_1

    .line 27
    .line 28
    new-instance v5, Ljava/lang/String;

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    new-array v6, v6, [B

    .line 32
    .line 33
    int-to-byte v7, v4

    .line 34
    aput-byte v7, v6, v3

    .line 35
    .line 36
    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    cmpg-float v7, v2, v6

    .line 44
    .line 45
    if-gez v7, :cond_0

    .line 46
    .line 47
    iput-object v5, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    .line 48
    .line 49
    move v2, v6

    .line 50
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public appendText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    return-void
.end method

.method public clear()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->clearText()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public clearText()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mBuilder:Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getCaptionWindowId()I
    .locals 1

    iget v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    return v0
.end method

.method public hide()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public initWindow(Landroid/media/Cea708CCWidget$CCLayout;Landroid/media/Cea708CCParser$CaptionWindow;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateWidestChar()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget p1, p2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorVertical:I

    .line 19
    .line 20
    int-to-float p1, p1

    .line 21
    iget-boolean v0, p2, Landroid/media/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    .line 22
    .line 23
    const/16 v1, 0x63

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    move v2, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v2, 0x4a

    .line 30
    .line 31
    :goto_0
    int-to-float v2, v2

    .line 32
    div-float/2addr p1, v2

    .line 33
    iget v2, p2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    .line 34
    .line 35
    int-to-float v2, v2

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/16 v1, 0xd1

    .line 40
    .line 41
    :goto_1
    int-to-float v0, v1

    .line 42
    div-float/2addr v2, v0

    .line 43
    const/4 v0, 0x0

    .line 44
    cmpg-float v1, p1, v0

    .line 45
    .line 46
    const-string v3, "CCWindowLayout"

    .line 47
    .line 48
    const/high16 v4, 0x3f800000    # 1.0f

    .line 49
    .line 50
    if-ltz v1, :cond_4

    .line 51
    .line 52
    cmpl-float v1, p1, v4

    .line 53
    .line 54
    if-lez v1, :cond_5

    .line 55
    .line 56
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v5, "The vertical position of the anchor point should be at the range of 0 and 1 but "

    .line 59
    .line 60
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    :cond_5
    cmpg-float v1, v2, v0

    .line 82
    .line 83
    if-ltz v1, :cond_6

    .line 84
    .line 85
    cmpl-float v1, v2, v4

    .line 86
    .line 87
    if-lez v1, :cond_7

    .line 88
    .line 89
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v5, "The horizontal position of the anchor point should be at the range of 0 and 1 but "

    .line 92
    .line 93
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    :cond_7
    iget v1, p2, Landroid/media/Cea708CCParser$CaptionWindow;->anchorId:I

    .line 115
    .line 116
    rem-int/lit8 v3, v1, 0x3

    .line 117
    .line 118
    const/4 v5, 0x3

    .line 119
    div-int/2addr v1, v5

    .line 120
    const/4 v6, 0x2

    .line 121
    const/4 v7, 0x1

    .line 122
    if-eqz v3, :cond_d

    .line 123
    .line 124
    if-eq v3, v7, :cond_9

    .line 125
    .line 126
    if-eq v3, v6, :cond_8

    .line 127
    .line 128
    const/16 v5, 0x11

    .line 129
    .line 130
    move v2, v0

    .line 131
    :goto_2
    move v3, v4

    .line 132
    goto/16 :goto_5

    .line 133
    .line 134
    :cond_8
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 135
    .line 136
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 137
    .line 138
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 139
    .line 140
    .line 141
    const/4 v5, 0x5

    .line 142
    move v3, v2

    .line 143
    move v2, v0

    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_9
    sub-float v3, v4, v2

    .line 147
    .line 148
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    iget v8, p2, Landroid/media/Cea708CCParser$CaptionWindow;->columnCount:I

    .line 153
    .line 154
    add-int/2addr v8, v7

    .line 155
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->getScreenColumnCount()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const/4 v10, 0x0

    .line 169
    :goto_3
    if-ge v10, v8, :cond_a

    .line 170
    .line 171
    iget-object v11, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mWidestChar:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    add-int/lit8 v10, v10, 0x1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_a
    new-instance v8, Landroid/graphics/Paint;

    .line 180
    .line 181
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 182
    .line 183
    .line 184
    iget-object v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 185
    .line 186
    invoke-virtual {v10}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 191
    .line 192
    .line 193
    iget v10, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mTextSize:F

    .line 194
    .line 195
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 207
    .line 208
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-lez v9, :cond_b

    .line 213
    .line 214
    const/high16 v9, 0x40000000    # 2.0f

    .line 215
    .line 216
    div-float/2addr v8, v9

    .line 217
    iget-object v9, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 218
    .line 219
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    int-to-float v9, v9

    .line 224
    const v10, 0x3f4ccccd    # 0.8f

    .line 225
    .line 226
    .line 227
    mul-float/2addr v9, v10

    .line 228
    div-float/2addr v8, v9

    .line 229
    goto :goto_4

    .line 230
    :cond_b
    move v8, v0

    .line 231
    :goto_4
    cmpl-float v9, v8, v0

    .line 232
    .line 233
    if-lez v9, :cond_c

    .line 234
    .line 235
    cmpg-float v9, v8, v2

    .line 236
    .line 237
    if-gez v9, :cond_c

    .line 238
    .line 239
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 240
    .line 241
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 242
    .line 243
    invoke-virtual {v3, v9}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 244
    .line 245
    .line 246
    sub-float/2addr v2, v8

    .line 247
    goto :goto_2

    .line 248
    :cond_c
    iget-object v5, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 249
    .line 250
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 251
    .line 252
    invoke-virtual {v5, v8}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 253
    .line 254
    .line 255
    sub-float v5, v2, v3

    .line 256
    .line 257
    add-float/2addr v2, v3

    .line 258
    move v3, v2

    .line 259
    move v2, v5

    .line 260
    move v5, v7

    .line 261
    goto :goto_5

    .line 262
    :cond_d
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 263
    .line 264
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 265
    .line 266
    invoke-virtual {v3, v8}, Lcom/android/internal/widget/SubtitleView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :goto_5
    if-eqz v1, :cond_10

    .line 272
    .line 273
    if-eq v1, v7, :cond_f

    .line 274
    .line 275
    if-eq v1, v6, :cond_e

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_e
    or-int/lit8 v5, v5, 0x50

    .line 279
    .line 280
    move v4, p1

    .line 281
    goto :goto_6

    .line 282
    :cond_f
    or-int/lit8 v5, v5, 0x10

    .line 283
    .line 284
    sub-float/2addr v4, p1

    .line 285
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    sub-float v1, p1, v0

    .line 290
    .line 291
    add-float v4, p1, v0

    .line 292
    .line 293
    move v0, v1

    .line 294
    goto :goto_6

    .line 295
    :cond_10
    or-int/lit8 v5, v5, 0x30

    .line 296
    .line 297
    move v0, p1

    .line 298
    :goto_6
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 299
    .line 300
    new-instance v1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    .line 301
    .line 302
    invoke-direct {v1, v0, v4, v2, v3}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(FFFF)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, p0, v1}, Landroid/media/Cea708CCWidget$CCLayout;->addOrUpdateViewToSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V

    .line 306
    .line 307
    .line 308
    iget p1, p2, Landroid/media/Cea708CCParser$CaptionWindow;->id:I

    .line 309
    .line 310
    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionWindowId(I)V

    .line 311
    .line 312
    .line 313
    iget p1, p2, Landroid/media/Cea708CCParser$CaptionWindow;->rowCount:I

    .line 314
    .line 315
    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setRowLimit(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 319
    .line 320
    .line 321
    iget-boolean p1, p2, Landroid/media/Cea708CCParser$CaptionWindow;->visible:Z

    .line 322
    .line 323
    if-eqz p1, :cond_11

    .line 324
    .line 325
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->show()V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_11
    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->hide()V

    .line 330
    .line 331
    .line 332
    :goto_7
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    iget p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    .line 4
    .line 5
    if-ne p4, p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    .line 8
    .line 9
    if-eq p5, p1, :cond_1

    .line 10
    .line 11
    :cond_0
    iput p4, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutWidth:I

    .line 12
    .line 13
    iput p5, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mLastCaptionLayoutHeight:I

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public removeFromCaptionView()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/media/Cea708CCWidget$CCLayout;->removeViewFromSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCLayout:Landroid/media/Cea708CCWidget$CCLayout;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public sendBuffer(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    return-void
.end method

.method public sendControl(C)V
    .locals 0

    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 2
    .line 3
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCCView:Landroid/media/Cea708CCWidget$CCView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$CCView;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setCaptionWindowId(I)V
    .locals 0

    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCaptionWindowId:I

    return-void
.end method

.method public setFontScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mFontScale:F

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateTextSize()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPenAttr(Landroid/media/Cea708CCParser$CaptionPenAttr;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->italic:Z

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 12
    .line 13
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->underline:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 26
    .line 27
    new-instance v2, Landroid/text/style/UnderlineSpan;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    iget v0, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penSize:I

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 43
    .line 44
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 45
    .line 46
    const/high16 v3, 0x3fa00000    # 1.25f

    .line 47
    .line 48
    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 56
    .line 57
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    .line 58
    .line 59
    const/high16 v3, 0x3f400000    # 0.75f

    .line 60
    .line 61
    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :goto_0
    iget p1, p1, Landroid/media/Cea708CCParser$CaptionPenAttr;->penOffset:I

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    if-eq p1, v1, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 75
    .line 76
    new-instance v0, Landroid/text/style/SuperscriptSpan;

    .line 77
    .line 78
    invoke-direct {v0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    iget-object p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mCharacterStyles:Ljava/util/List;

    .line 86
    .line 87
    new-instance v0, Landroid/text/style/SubscriptSpan;

    .line 88
    .line 89
    invoke-direct {v0}, Landroid/text/style/SubscriptSpan;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void
.end method

.method public setPenColor(Landroid/media/Cea708CCParser$CaptionPenColor;)V
    .locals 0

    return-void
.end method

.method public setPenLocation(II)V
    .locals 1

    .line 1
    iget p2, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 2
    .line 3
    if-ltz p2, :cond_0

    .line 4
    .line 5
    :goto_0
    if-ge p2, p1, :cond_0

    .line 6
    .line 7
    const-string v0, "\n"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->appendText(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 p2, p2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRow:I

    .line 16
    .line 17
    return-void
.end method

.method public setRowLimit(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Landroid/media/Cea708CCWidget$CCWindowLayout;->mRowLimit:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "A rowLimit should have a positive number"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCWidget$CCWindowLayout;->updateText(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWindowAttr(Landroid/media/Cea708CCParser$CaptionWindowAttr;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
