.class public Lcom/lsec/core/frame/ctrl/JCheckBox;
.super Landroid/widget/TextView;
.source "JCheckBox.java"


# instance fields
.field bAttached:Z

.field bWillSetIconName:Z

.field bWillUpdateBackground:Z

.field drawable:[Landroid/graphics/drawable/Drawable;

.field flag:I

.field iState:I

.field iconNames:[Ljava/lang/String;

.field isCheck:Z

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

.field mStrDrawable:Ljava/lang/String;

.field mStrDrawableFix:Ljava/lang/String;

.field mStrLanguage:Ljava/lang/String;

.field mStrTextBak:Ljava/lang/String;

.field private page:Lcom/lsec/core/frame/ctrl/JPage;

.field paint:Landroid/graphics/Paint;

.field text:Ljava/lang/String;

.field textSize:F


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bAttached:Z

    .line 22
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bWillUpdateBackground:Z

    .line 23
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bWillSetIconName:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->iState:I

    .line 34
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->isCheck:Z

    .line 37
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->textSize:F

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mDrawables:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->paint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->paint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    return-void
.end method


# virtual methods
.method public getPage()Lcom/lsec/core/frame/ctrl/JPage;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->isCheck:Z

    return v0
.end method

.method public mySetText(Ljava/lang/String;)V
    .locals 7
    .param p1, "strConf"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 248
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Lcom/lsec/core/frame/app/MyUiItem;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 249
    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 250
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/app/MyUiItem;->setTextConf(Ljava/lang/String;)V

    .line 253
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 254
    .local v1, "localeDefault":Ljava/util/Locale;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 255
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 257
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

    .line 258
    .local v3, "strLanguage":Ljava/lang/String;
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v5, p1}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setText(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, v2, v3}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setTextBak(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bAttached:Z

    .line 222
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bWillSetIconName:Z

    if-eqz v0, :cond_0

    .line 223
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bWillSetIconName:Z

    .line 224
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->iconNames:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setIconName([Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bWillUpdateBackground:Z

    if-eqz v0, :cond_1

    .line 228
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bWillUpdateBackground:Z

    .line 229
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->updateBackground()V

    .line 232
    :cond_1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 233
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bAttached:Z

    .line 238
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 239
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v15

    .line 132
    .local v15, "tag":Ljava/lang/Object;
    instance-of v1, v15, Lcom/lsec/core/frame/app/MyUiItem;

    if-eqz v1, :cond_1

    move-object v9, v15

    .line 133
    check-cast v9, Lcom/lsec/core/frame/app/MyUiItem;

    .line 134
    .local v9, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getTextConf()Ljava/lang/String;

    move-result-object v14

    .line 135
    .local v14, "strTextConf":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    .line 137
    .local v10, "localeDefault":Ljava/util/Locale;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 138
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 141
    .local v13, "strLanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrLanguage:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrTextBak:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v1, v14}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setText(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setTextBak(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {v10}, Lcom/lsec/core/util/FuncUtils;->isLongLang(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setTextSize(IF)V

    .line 155
    .end local v9    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v10    # "localeDefault":Ljava/util/Locale;
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "strLanguage":Ljava/lang/String;
    .end local v14    # "strTextConf":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->drawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->drawable:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->drawable:[Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->isCheck:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    aget-object v7, v2, v1

    .line 157
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_5

    .line 191
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    return-void

    .line 149
    .restart local v9    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v10    # "localeDefault":Ljava/util/Locale;
    .restart local v12    # "str":Ljava/lang/String;
    .restart local v13    # "strLanguage":Ljava/lang/String;
    .restart local v14    # "strTextConf":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setTextSize(IF)V

    goto :goto_0

    .line 156
    .end local v9    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v10    # "localeDefault":Ljava/util/Locale;
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "strLanguage":Ljava/lang/String;
    .end local v14    # "strTextConf":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 160
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 161
    .local v16, "w":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 162
    .local v8, "h":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v1, v2, v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/app/MyUiItem;

    .line 165
    .restart local v9    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v9}, Lcom/lsec/core/frame/app/MyUiItem;->getRect()[Landroid/graphics/Rect;

    move-result-object v11

    .line 166
    .local v11, "rec":[Landroid/graphics/Rect;
    if-eqz v11, :cond_6

    array-length v1, v11

    const/4 v2, 0x1

    if-lt v1, v2, :cond_6

    .line 167
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 170
    const/4 v1, 0x0

    aget-object v1, v11, v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/4 v4, 0x1

    invoke-virtual {v3, v8, v4}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v1, v1, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 172
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 188
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 175
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    add-int/lit8 v2, v16, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/4 v4, 0x1

    invoke-virtual {v3, v8, v4}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v1, v1, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 184
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->invalidate()V

    .line 217
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->isCheck:Z

    .line 211
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->invalidate()V

    .line 212
    return-void
.end method

.method public setIconName([Ljava/lang/String;)V
    .locals 9
    .param p1, "iconNames"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 60
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->iconNames:[Ljava/lang/String;

    .line 61
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bAttached:Z

    if-eqz v2, :cond_3

    .line 65
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->drawable:[Landroid/graphics/drawable/Drawable;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "i":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->invalidate()V

    goto :goto_0

    .line 68
    :cond_2
    aget-object v1, p1, v2

    .line 69
    .local v1, "icon":Ljava/lang/String;
    if-gt v0, v8, :cond_1

    .line 72
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->drawable:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "i":I
    .end local v1    # "icon":Ljava/lang/String;
    :cond_3
    iput-boolean v8, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bWillSetIconName:Z

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->updateBackground()V

    .line 127
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->iState:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bWillUpdateBackground:Z

    .line 84
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrDrawable:Ljava/lang/String;

    .line 85
    if-eqz p2, :cond_0

    .line 86
    if-nez p1, :cond_1

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->updateBackground()V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextBak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "strLanguage"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrTextBak:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrLanguage:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 194
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->textSize:F

    .line 195
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 196
    return-void
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bAttached:Z

    if-nez v1, :cond_1

    .line 95
    iput-boolean v3, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bWillUpdateBackground:Z

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iput-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->bWillUpdateBackground:Z

    .line 101
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->iState:I

    .line 102
    .local v0, "iStateBak":I
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JCheckBox;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iput v3, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->iState:I

    .line 107
    :goto_1
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->iState:I

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrDrawable:Ljava/lang/String;

    iput-object v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrDrawableFix:Ljava/lang/String;

    .line 110
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->iState:I

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_2
    :pswitch_0
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrDrawableFix:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/ctrl/JCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 105
    :cond_2
    iput v2, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->iState:I

    goto :goto_1

    .line 114
    :pswitch_1
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrDrawableFix:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_p"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lsec/core/frame/ctrl/JCheckBox;->mStrDrawableFix:Ljava/lang/String;

    goto :goto_2

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
