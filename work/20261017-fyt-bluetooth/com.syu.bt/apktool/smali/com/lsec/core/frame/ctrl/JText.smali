.class public Lcom/lsec/core/frame/ctrl/JText;
.super Landroid/widget/TextView;
.source "JText.java"


# instance fields
.field bAttached:Z

.field private bMarQuee:Z

.field bWillUpdateBackground:Z

.field public focus:Z

.field public iColor:I

.field iState:I

.field mColor:[I

.field public mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mListStrWithColor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStrDrawable:Ljava/lang/String;

.field mStrDrawableFix:Ljava/lang/String;

.field mStrLanguage:Ljava/lang/String;

.field mStrSpan:Ljava/lang/String;

.field mStrTextBak:Ljava/lang/String;

.field private page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JText;->bAttached:Z

    .line 25
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JText;->bWillUpdateBackground:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    .line 36
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JText;->bMarQuee:Z

    .line 37
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JText;->focus:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JText;->mListStrWithColor:Ljava/util/List;

    .line 39
    const/16 v0, 0xff

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JText;->iColor:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JText;->mDrawables:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JText;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 45
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JText;->bMarQuee:Z

    return v0
.end method

.method public mySetText(Ljava/lang/String;)V
    .locals 7
    .param p1, "strConf"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 212
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Lcom/lsec/core/frame/app/MyUiItem;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 213
    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 214
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/app/MyUiItem;->setTextConf(Ljava/lang/String;)V

    .line 217
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 218
    .local v1, "localeDefault":Ljava/util/Locale;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 219
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 221
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "strLanguage":Ljava/lang/String;
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JText;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v5, p1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0, v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setTextBak(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JText;->bAttached:Z

    .line 119
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JText;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JText;->bWillUpdateBackground:Z

    .line 121
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->updateBackground()V

    .line 123
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 124
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JText;->bAttached:Z

    .line 129
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 130
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 162
    .local v9, "tag":Ljava/lang/Object;
    instance-of v10, v9, Lcom/lsec/core/frame/app/MyUiItem;

    if-eqz v10, :cond_1

    move-object v3, v9

    .line 163
    check-cast v3, Lcom/lsec/core/frame/app/MyUiItem;

    .line 164
    .local v3, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v3}, Lcom/lsec/core/frame/app/MyUiItem;->getTextConf()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "strTextConf":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 166
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 167
    .local v4, "localeDefault":Ljava/util/Locale;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v10, v11, :cond_0

    .line 168
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 170
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "strLanguage":Ljava/lang/String;
    iget-object v10, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrLanguage:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrTextBak:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 173
    iget-object v10, p0, Lcom/lsec/core/frame/ctrl/JText;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v10, v10, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v10, v7}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p0, v5, v6}, Lcom/lsec/core/frame/ctrl/JText;->setTextBak(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v4}, Lcom/lsec/core/util/FuncUtils;->isLongLang(Ljava/util/Locale;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 177
    invoke-virtual {v3}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    int-to-float v10, v10

    invoke-virtual {p0, v12, v10}, Lcom/lsec/core/frame/ctrl/JText;->setTextSize(IF)V

    .line 185
    .end local v3    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v4    # "localeDefault":Ljava/util/Locale;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "strLanguage":Ljava/lang/String;
    .end local v7    # "strTextConf":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/lsec/core/frame/ctrl/JText;->mListStrWithColor:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 186
    .local v0, "iCntWithColor":I
    if-lez v0, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrSpan:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrSpan:Ljava/lang/String;

    .line 189
    new-instance v8, Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrSpan:Ljava/lang/String;

    invoke-direct {v8, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 190
    .local v8, "style":Landroid/text/SpannableStringBuilder;
    iget-object v10, p0, Lcom/lsec/core/frame/ctrl/JText;->mListStrWithColor:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 198
    invoke-virtual {p0, v8}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .end local v8    # "style":Landroid/text/SpannableStringBuilder;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    return-void

    .line 179
    .end local v0    # "iCntWithColor":I
    .restart local v3    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v4    # "localeDefault":Ljava/util/Locale;
    .restart local v5    # "str":Ljava/lang/String;
    .restart local v6    # "strLanguage":Ljava/lang/String;
    .restart local v7    # "strTextConf":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, v12, v10}, Lcom/lsec/core/frame/ctrl/JText;->setTextSize(IF)V

    goto :goto_0

    .line 190
    .end local v3    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v4    # "localeDefault":Ljava/util/Locale;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "strLanguage":Ljava/lang/String;
    .end local v7    # "strTextConf":Ljava/lang/String;
    .restart local v0    # "iCntWithColor":I
    .restart local v8    # "style":Landroid/text/SpannableStringBuilder;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 191
    .restart local v5    # "str":Ljava/lang/String;
    iget-object v11, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrSpan:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 192
    .local v2, "iStartColor":I
    if-ltz v2, :cond_2

    .line 193
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int v1, v2, v11

    .line 194
    .local v1, "iEndColor":I
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    iget v12, p0, Lcom/lsec/core/frame/ctrl/JText;->iColor:I

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 195
    const/16 v12, 0x21

    .line 194
    invoke-virtual {v8, v11, v2, v1, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JText;->bMarQuee:Z

    if-eqz v0, :cond_0

    .line 150
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 151
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 152
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JText;->setMarqueeRepeatLimit(I)V

    .line 156
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 157
    return-void
.end method

.method public varargs setColor([I)V
    .locals 0
    .param p1, "color"    # [I

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JText;->mColor:[I

    .line 53
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->updateBackground()V

    .line 54
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->updateBackground()V

    .line 136
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/lsec/core/frame/ctrl/JText;->focus:Z

    .line 58
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->updateBackground()V

    .line 59
    return-void
.end method

.method public setMarQuee(Z)V
    .locals 0
    .param p1, "bMarQuee"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/lsec/core/frame/ctrl/JText;->bMarQuee:Z

    .line 140
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JText;->bWillUpdateBackground:Z

    .line 64
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrDrawable:Ljava/lang/String;

    .line 65
    if-eqz p2, :cond_0

    .line 66
    if-nez p1, :cond_1

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->updateBackground()V

    goto :goto_0
.end method

.method public setTextBak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "strLanguage"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrTextBak:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrLanguage:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public updateBackground()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JText;->bAttached:Z

    if-nez v2, :cond_1

    .line 75
    iput-boolean v4, p0, Lcom/lsec/core/frame/ctrl/JText;->bWillUpdateBackground:Z

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iput-boolean v3, p0, Lcom/lsec/core/frame/ctrl/JText;->bWillUpdateBackground:Z

    .line 81
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    .line 82
    .local v1, "iStateBak":I
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JText;->focus:Z

    if-eqz v2, :cond_3

    .line 83
    iput v4, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    .line 91
    :goto_1
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    if-eq v1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->mColor:[I

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->mColor:[I

    array-length v2, v2

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    if-le v2, v3, :cond_2

    .line 94
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->mColor:[I

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTextColor(I)V

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrDrawable:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrDrawable:Ljava/lang/String;

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrDrawableFix:Ljava/lang/String;

    .line 99
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    packed-switch v2, :pswitch_data_0

    .line 110
    :goto_2
    :pswitch_0
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrDrawableFix:Ljava/lang/String;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JText;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JText;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 85
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JText;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 86
    const/4 v2, 0x2

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    goto :goto_1

    .line 88
    :cond_4
    iput v3, p0, Lcom/lsec/core/frame/ctrl/JText;->iState:I

    goto :goto_1

    .line 103
    :pswitch_1
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrDrawableFix:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_p"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrDrawableFix:Ljava/lang/String;

    goto :goto_2

    .line 106
    :pswitch_2
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrDrawableFix:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_u"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JText;->mStrDrawableFix:Ljava/lang/String;

    goto :goto_2

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
