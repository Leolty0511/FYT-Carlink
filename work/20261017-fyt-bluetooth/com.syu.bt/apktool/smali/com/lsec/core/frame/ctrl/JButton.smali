.class public Lcom/lsec/core/frame/ctrl/JButton;
.super Landroid/widget/TextView;
.source "JButton.java"


# instance fields
.field bAttached:Z

.field public bEnablePressState:Z

.field public bPartnerDependent:Z

.field public bUpdateBkOnPress:Z

.field bWillUpdateBackground:Z

.field public focus:Z

.field iState:I

.field mColor:[I

.field mColorBk:[I

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

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mPartnerViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mPosIcon:[I

.field mStrDrawable:Ljava/lang/String;

.field mStrDrawableFix:Ljava/lang/String;

.field mStrIcon:Ljava/lang/String;

.field mStrIconFix:Ljava/lang/String;

.field mStrLanguage:Ljava/lang/String;

.field mStrTextBak:Ljava/lang/String;

.field public page:Lcom/lsec/core/frame/ctrl/JPage;

.field public pagePress:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JButton;->bAttached:Z

    .line 25
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JButton;->bWillUpdateBackground:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    .line 41
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JButton;->focus:Z

    .line 42
    iput-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JButton;->bUpdateBkOnPress:Z

    .line 43
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JButton;->bPartnerDependent:Z

    .line 44
    iput-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JButton;->bEnablePressState:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->mDrawables:Ljava/util/HashMap;

    .line 49
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 50
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    return v0
.end method

.method public getStrDrawable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawable:Ljava/lang/String;

    return-object v0
.end method

.method public mySetText(Ljava/lang/String;)V
    .locals 7
    .param p1, "strConf"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 313
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Lcom/lsec/core/frame/app/MyUiItem;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 314
    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 315
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/app/MyUiItem;->setTextConf(Ljava/lang/String;)V

    .line 318
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 319
    .local v1, "localeDefault":Ljava/util/Locale;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 320
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 322
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

    .line 323
    .local v3, "strLanguage":Ljava/lang/String;
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v5, p1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {p0, v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setTextBak(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->bAttached:Z

    .line 292
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->bWillUpdateBackground:Z

    .line 294
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->updateBackground()V

    .line 297
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 298
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->bAttached:Z

    .line 303
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 304
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 253
    .local v5, "tag":Ljava/lang/Object;
    instance-of v6, v5, Lcom/lsec/core/frame/app/MyUiItem;

    if-eqz v6, :cond_1

    move-object v0, v5

    .line 254
    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 255
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getTextConf()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "strTextConf":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 257
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 258
    .local v1, "localeDefault":Ljava/util/Locale;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_0

    .line 259
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 261
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "strLanguage":Ljava/lang/String;
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrLanguage:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrTextBak:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v6, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p0, v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->setTextBak(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {v1}, Lcom/lsec/core/util/FuncUtils;->isLongLang(Ljava/util/Locale;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 268
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    invoke-virtual {p0, v12, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setTextSize(IF)V

    .line 276
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v1    # "localeDefault":Ljava/util/Locale;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strLanguage":Ljava/lang/String;
    .end local v4    # "strTextConf":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 277
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 278
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    aget v7, v7, v12

    iget-object v8, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 280
    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/JButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/lsec/core/frame/ctrl/JButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v6, v12, v12, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    :cond_2
    return-void

    .line 270
    .restart local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v1    # "localeDefault":Ljava/util/Locale;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "strLanguage":Ljava/lang/String;
    .restart local v4    # "strTextConf":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0, v12, v6}, Lcom/lsec/core/frame/ctrl/JButton;->setTextSize(IF)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 287
    return-void
.end method

.method public varargs setColor([I)V
    .locals 0
    .param p1, "color"    # [I

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JButton;->mColor:[I

    .line 99
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->updateBackground()V

    .line 100
    return-void
.end method

.method public varargs setColorBk([I)V
    .locals 0
    .param p1, "colorBk"    # [I

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JButton;->mColorBk:[I

    .line 104
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->updateBackground()V

    .line 105
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocusable(Z)V

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->updateBackground()V

    .line 129
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocusable(Z)V

    goto :goto_0
.end method

.method public setFocus(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lsec/core/frame/ctrl/JButton;->focus:Z

    .line 62
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->updateBackground()V

    .line 63
    return-void
.end method

.method public setIcon([ILjava/lang/String;)V
    .locals 6
    .param p1, "iPosIcon"    # [I
    .param p2, "icon"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    if-eqz p1, :cond_1

    .line 83
    array-length v0, p1

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    if-nez v0, :cond_0

    .line 85
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    aget v1, p1, v2

    aput v1, v0, v2

    .line 88
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    aget v1, p1, v3

    aput v1, v0, v3

    .line 89
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    aget v1, p1, v4

    aput v1, v0, v4

    .line 90
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    aget v1, p1, v5

    aput v1, v0, v5

    .line 94
    :cond_1
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIcon:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setPartnerFocus(Z)V
    .locals 4
    .param p1, "bFocus"    # Z

    .prologue
    .line 132
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPartnerViews:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPartnerViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 134
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 135
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 140
    :sswitch_0
    check-cast v1, Lcom/lsec/core/frame/ctrl/JView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/JView;->setFocus(Z)V

    goto :goto_0

    .line 137
    .restart local v1    # "view":Landroid/view/View;
    :sswitch_1
    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/JText;->setFocus(Z)V

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public setPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->updateBackground()V

    .line 112
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 113
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p0, p1}, Lcom/lsec/core/frame/page/IPageNotify;->setPressed(Lcom/lsec/core/frame/ctrl/JButton;Z)V

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JButton;->pagePress:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JButton;->pagePress:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/JPage;->onPress(Z)V

    .line 118
    :cond_1
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JButton;->bWillUpdateBackground:Z

    .line 68
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawable:Ljava/lang/String;

    .line 69
    if-eqz p2, :cond_0

    .line 70
    if-nez p1, :cond_1

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->updateBackground()V

    goto :goto_0
.end method

.method public setTextBak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "strLanguage"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrTextBak:Ljava/lang/String;

    .line 308
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrLanguage:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setUpdateBkOnPress(Z)V
    .locals 0
    .param p1, "bUpdateOnPress"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/lsec/core/frame/ctrl/JButton;->bUpdateBkOnPress:Z

    .line 58
    return-void
.end method

.method public updateBackground()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 148
    iget-boolean v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->bAttached:Z

    if-nez v6, :cond_1

    .line 149
    iput-boolean v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->bWillUpdateBackground:Z

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iput-boolean v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->bWillUpdateBackground:Z

    .line 155
    iget v3, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    .line 156
    .local v3, "iStateBak":I
    iget-boolean v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->focus:Z

    if-eqz v6, :cond_7

    .line 157
    iput v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    .line 169
    :goto_1
    iget-boolean v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->bPartnerDependent:Z

    if-nez v6, :cond_2

    .line 170
    iget v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    if-ne v6, v4, :cond_b

    :goto_2
    invoke-virtual {p0, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setPartnerFocus(Z)V

    .line 172
    :cond_2
    iget v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    if-eq v3, v4, :cond_0

    .line 173
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mColor:[I

    if-eqz v4, :cond_3

    .line 174
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mColor:[I

    array-length v4, v4

    iget v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    if-le v4, v5, :cond_3

    .line 175
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mColor:[I

    iget v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/lsec/core/frame/ctrl/JButton;->setTextColor(I)V

    .line 178
    :cond_3
    iget-boolean v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->bUpdateBkOnPress:Z

    if-eqz v4, :cond_5

    .line 179
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawable:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 180
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawable:Ljava/lang/String;

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawableFix:Ljava/lang/String;

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 184
    .local v2, "drawableFocus":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    packed-switch v4, :pswitch_data_0

    .line 204
    :goto_3
    :pswitch_0
    if-nez v1, :cond_4

    .line 205
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawableFix:Ljava/lang/String;

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/JButton;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 207
    :cond_4
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawableFocus":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIcon:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mPosIcon:[I

    if-eqz v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIcon:Ljava/lang/String;

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIconFix:Ljava/lang/String;

    .line 219
    const/4 v1, 0x0

    .line 220
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 221
    .restart local v2    # "drawableFocus":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    packed-switch v4, :pswitch_data_1

    .line 241
    :goto_5
    :pswitch_1
    if-nez v1, :cond_6

    .line 242
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIconFix:Ljava/lang/String;

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/JButton;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 244
    :cond_6
    iput-object v1, p0, Lcom/lsec/core/frame/ctrl/JButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->invalidate()V

    goto :goto_0

    .line 158
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawableFocus":Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 159
    const/4 v6, 0x3

    iput v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    goto :goto_1

    .line 161
    :cond_8
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 162
    const/4 v6, 0x2

    iput v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    goto/16 :goto_1

    .line 163
    :cond_9
    iget-boolean v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->bEnablePressState:Z

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JButton;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 164
    iput v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    goto/16 :goto_1

    .line 166
    :cond_a
    iput v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    goto/16 :goto_1

    :cond_b
    move v4, v5

    .line 170
    goto/16 :goto_2

    .line 188
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawableFocus":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawableFix:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_p"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawableFix:Ljava/lang/String;

    goto :goto_3

    .line 191
    :pswitch_3
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawableFix:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_u"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawableFix:Ljava/lang/String;

    goto/16 :goto_3

    .line 194
    :pswitch_4
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawableFix:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_f"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawableFix:Ljava/lang/String;

    .line 195
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawableFix:Ljava/lang/String;

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/JButton;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 196
    if-nez v2, :cond_c

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawable:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrDrawableFix:Ljava/lang/String;

    goto/16 :goto_3

    .line 199
    :cond_c
    move-object v1, v2

    goto/16 :goto_3

    .line 208
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawableFocus":Landroid/graphics/drawable/Drawable;
    :cond_d
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mColorBk:[I

    if-eqz v4, :cond_5

    .line 209
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mColorBk:[I

    array-length v4, v4

    iget v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    if-le v4, v5, :cond_5

    .line 210
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mColorBk:[I

    iget v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->iState:I

    aget v4, v4, v5

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 211
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 225
    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawableFocus":Landroid/graphics/drawable/Drawable;
    :pswitch_5
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIconFix:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_p"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIconFix:Ljava/lang/String;

    goto/16 :goto_5

    .line 228
    :pswitch_6
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIconFix:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_u"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIconFix:Ljava/lang/String;

    goto/16 :goto_5

    .line 231
    :pswitch_7
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIconFix:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_f"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIconFix:Ljava/lang/String;

    .line 232
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIconFix:Ljava/lang/String;

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/JButton;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 233
    if-nez v2, :cond_e

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIcon:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_p"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lsec/core/frame/ctrl/JButton;->mStrIconFix:Ljava/lang/String;

    goto/16 :goto_5

    .line 236
    :cond_e
    move-object v1, v2

    goto/16 :goto_5

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 221
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
