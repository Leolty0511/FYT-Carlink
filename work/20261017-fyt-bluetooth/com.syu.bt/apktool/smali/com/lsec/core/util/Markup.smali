.class public Lcom/lsec/core/util/Markup;
.super Ljava/lang/Object;
.source "Markup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/util/Markup$XmlItem;
    }
.end annotation


# instance fields
.field public mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lsec/core/util/Markup$XmlItem;",
            ">;"
        }
    .end annotation
.end field

.field public mLenData:I

.field public mNoError:Z

.field public mStrData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ExitItem()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mParent:Lcom/lsec/core/util/Markup$XmlItem;

    iput-object v0, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    .line 211
    :cond_0
    return-void
.end method

.method public FindItem(Ljava/lang/String;)Z
    .locals 7
    .param p1, "strName"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "bRet":Z
    if-eqz p1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    .line 173
    .local v1, "itemBak":Lcom/lsec/core/util/Markup$XmlItem;
    :goto_0
    iget-object v3, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    if-nez v3, :cond_1

    .line 182
    :goto_1
    iput-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    .line 185
    .end local v1    # "itemBak":Lcom/lsec/core/util/Markup$XmlItem;
    :cond_0
    return v0

    .line 174
    .restart local v1    # "itemBak":Lcom/lsec/core/util/Markup$XmlItem;
    :cond_1
    iget-object v3, p0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    iget v4, p0, Lcom/lsec/core/util/Markup;->mLenData:I

    iget-object v5, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget v5, v5, Lcom/lsec/core/util/Markup$XmlItem;->mPosStart:I

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/lsec/core/util/Markup;->FindToken(Ljava/lang/String;II[I)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "strTemp":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    const/4 v0, 0x1

    .line 177
    goto :goto_1

    .line 180
    :cond_2
    iget-object v3, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v3, v3, Lcom/lsec/core/util/Markup$XmlItem;->mNext:Lcom/lsec/core/util/Markup$XmlItem;

    iput-object v3, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    goto :goto_0
.end method

.method public FindNextItem(Ljava/lang/String;)Z
    .locals 2
    .param p1, "strName"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "bRet":Z
    invoke-virtual {p0}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Lcom/lsec/core/util/Markup;->FindItem(Ljava/lang/String;)Z

    move-result v0

    .line 193
    :cond_0
    return v0
.end method

.method public FindToken(Ljava/lang/String;II[I)Ljava/lang/String;
    .locals 11
    .param p1, "strData"    # Ljava/lang/String;
    .param p2, "iLenData"    # I
    .param p3, "iStart"    # I
    .param p4, "iStartNew"    # [I

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/4 v6, 0x0

    .line 288
    const/4 v4, 0x0

    .line 289
    .local v4, "strRet":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 290
    const/4 v5, -0x1

    aput v5, p4, v6

    .line 292
    :cond_0
    if-ltz p3, :cond_5

    if-ge p3, p2, :cond_5

    if-eqz p1, :cond_5

    .line 295
    move v3, p3

    .line 296
    .local v3, "iStartPos":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 297
    .local v0, "c":C
    :goto_0
    if-eq v0, v10, :cond_6

    if-eq v0, v7, :cond_6

    if-eq v0, v9, :cond_6

    if-eq v0, v8, :cond_6

    const/16 v5, 0x3d

    if-eq v0, v5, :cond_6

    const/16 v5, 0x3c

    if-eq v0, v5, :cond_6

    .line 305
    :cond_1
    move v2, v3

    .line 306
    .local v2, "iEndPos":I
    const/16 v5, 0x27

    if-eq v0, v5, :cond_2

    const/16 v5, 0x22

    if-ne v0, v5, :cond_8

    .line 307
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 308
    add-int/lit8 v2, v2, 0x1

    .line 309
    if-ge v2, p2, :cond_3

    .line 310
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 311
    .local v1, "cTmp":C
    :goto_1
    if-ne v1, v0, :cond_7

    .line 331
    .end local v1    # "cTmp":C
    :cond_3
    if-le v2, v3, :cond_4

    .line 332
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 334
    :cond_4
    if-eqz p4, :cond_5

    .line 335
    add-int/lit8 v5, v2, 0x1

    aput v5, p4, v6

    .line 338
    .end local v0    # "c":C
    .end local v2    # "iEndPos":I
    .end local v3    # "iStartPos":I
    :cond_5
    return-object v4

    .line 298
    .restart local v0    # "c":C
    .restart local v3    # "iStartPos":I
    :cond_6
    add-int/lit8 v5, p2, -0x1

    if-ge v3, v5, :cond_1

    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 302
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 312
    .restart local v1    # "cTmp":C
    .restart local v2    # "iEndPos":I
    :cond_7
    add-int/lit8 v5, p2, -0x1

    if-ge v2, v5, :cond_3

    .line 315
    add-int/lit8 v2, v2, 0x1

    .line 316
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 320
    .end local v1    # "cTmp":C
    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 321
    .restart local v1    # "cTmp":C
    :goto_2
    if-eq v1, v10, :cond_3

    if-eq v1, v7, :cond_3

    if-eq v1, v9, :cond_3

    if-eq v1, v8, :cond_3

    const/16 v5, 0x3d

    if-eq v1, v5, :cond_3

    .line 322
    const/16 v5, 0x3c

    if-eq v1, v5, :cond_3

    .line 323
    add-int/lit8 v5, p2, -0x1

    if-ge v2, v5, :cond_3

    .line 326
    add-int/lit8 v2, v2, 0x1

    .line 327
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2
.end method

.method public GetAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "strName"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "strRet":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v1, v1, Lcom/lsec/core/util/Markup$XmlItem;->mAttrs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v1, v1, Lcom/lsec/core/util/Markup$XmlItem;->mAttrs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "strRet":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 231
    .restart local v0    # "strRet":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public GetData()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v1, v1, Lcom/lsec/core/util/Markup$XmlItem;->mChild:Lcom/lsec/core/util/Markup$XmlItem;

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    iget v2, p0, Lcom/lsec/core/util/Markup;->mLenData:I

    iget-object v3, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget v3, v3, Lcom/lsec/core/util/Markup$XmlItem;->mPosEnd:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/lsec/core/util/Markup;->GetData(Ljava/lang/String;II[I)Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_0
    return-object v0
.end method

.method public GetData(Ljava/lang/String;II[I)Ljava/lang/String;
    .locals 8
    .param p1, "strData"    # Ljava/lang/String;
    .param p2, "iLenData"    # I
    .param p3, "iStart"    # I
    .param p4, "iStartNew"    # [I

    .prologue
    const/16 v7, 0x3c

    const/4 v6, 0x0

    .line 235
    const/4 v4, 0x0

    .line 236
    .local v4, "strRet":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 237
    const/4 v5, -0x1

    aput v5, p4, v6

    .line 239
    :cond_0
    if-ltz p3, :cond_5

    if-ge p3, p2, :cond_5

    if-eqz p1, :cond_5

    .line 242
    move v3, p3

    .line 243
    .local v3, "iStartPos":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 244
    .local v0, "c":C
    :goto_0
    const/16 v5, 0x20

    if-eq v0, v5, :cond_6

    const/16 v5, 0x9

    if-eq v0, v5, :cond_6

    const/16 v5, 0xd

    if-eq v0, v5, :cond_6

    const/16 v5, 0xa

    if-eq v0, v5, :cond_6

    const/16 v5, 0x3d

    if-eq v0, v5, :cond_6

    if-eq v0, v7, :cond_6

    .line 252
    :cond_1
    move v2, v3

    .line 253
    .local v2, "iEndPos":I
    const/16 v5, 0x27

    if-eq v0, v5, :cond_2

    const/16 v5, 0x22

    if-ne v0, v5, :cond_8

    .line 254
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 256
    if-ge v2, p2, :cond_3

    .line 257
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 258
    .local v1, "cTmp":C
    :goto_1
    if-ne v1, v0, :cond_7

    .line 277
    .end local v1    # "cTmp":C
    :cond_3
    if-le v2, v3, :cond_4

    .line 278
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 280
    :cond_4
    if-eqz p4, :cond_5

    .line 281
    add-int/lit8 v5, v2, 0x1

    aput v5, p4, v6

    .line 284
    .end local v0    # "c":C
    .end local v2    # "iEndPos":I
    .end local v3    # "iStartPos":I
    :cond_5
    return-object v4

    .line 245
    .restart local v0    # "c":C
    .restart local v3    # "iStartPos":I
    :cond_6
    add-int/lit8 v5, p2, -0x1

    if-ge v3, v5, :cond_1

    .line 248
    add-int/lit8 v3, v3, 0x1

    .line 249
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 259
    .restart local v1    # "cTmp":C
    .restart local v2    # "iEndPos":I
    :cond_7
    add-int/lit8 v5, p2, -0x1

    if-ge v2, v5, :cond_3

    .line 262
    add-int/lit8 v2, v2, 0x1

    .line 263
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 267
    .end local v1    # "cTmp":C
    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 268
    .restart local v1    # "cTmp":C
    :goto_2
    if-eq v1, v7, :cond_3

    .line 269
    add-int/lit8 v5, p2, -0x1

    if-ge v2, v5, :cond_3

    .line 272
    add-int/lit8 v2, v2, 0x1

    .line 273
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2
.end method

.method public HeadItem()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mParent:Lcom/lsec/core/util/Markup$XmlItem;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mParent:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mChild:Lcom/lsec/core/util/Markup$XmlItem;

    iput-object v0, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    .line 154
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/util/Markup;->ToRoot()V

    goto :goto_0
.end method

.method public IntoItem()Z
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v1, v1, Lcom/lsec/core/util/Markup$XmlItem;->mChild:Lcom/lsec/core/util/Markup$XmlItem;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v1, v1, Lcom/lsec/core/util/Markup$XmlItem;->mChild:Lcom/lsec/core/util/Markup$XmlItem;

    iput-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    .line 201
    const/4 v0, 0x1

    .line 205
    :cond_0
    return v0
.end method

.method public NextItem()Z
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "bRet":Z
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v1, v1, Lcom/lsec/core/util/Markup$XmlItem;->mNext:Lcom/lsec/core/util/Markup$XmlItem;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v1, v1, Lcom/lsec/core/util/Markup$XmlItem;->mNext:Lcom/lsec/core/util/Markup$XmlItem;

    iput-object v1, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    .line 162
    const/4 v0, 0x1

    .line 166
    :cond_0
    return v0
.end method

.method public ParseItem(ILcom/lsec/core/util/Markup$XmlItem;)I
    .locals 19
    .param p1, "iStart"    # I
    .param p2, "parent"    # Lcom/lsec/core/util/Markup$XmlItem;

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lsec/core/util/Markup;->mLenData:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-le v0, v1, :cond_0

    if-gez p1, :cond_1

    .line 45
    :cond_0
    const/16 v17, -0x1

    move/from16 v10, p1

    .line 134
    .end local p1    # "iStart":I
    .local v10, "iStart":I
    :goto_0
    return v17

    .line 47
    .end local v10    # "iStart":I
    .restart local p1    # "iStart":I
    :cond_1
    const/4 v14, 0x0

    .line 48
    .local v14, "prev":Lcom/lsec/core/util/Markup$XmlItem;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lsec/core/util/Markup;->mLenData:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-le v0, v1, :cond_3

    if-gez p1, :cond_4

    :cond_3
    move/from16 v10, p1

    .end local p1    # "iStart":I
    .restart local v10    # "iStart":I
    move/from16 v17, p1

    .line 134
    goto :goto_0

    .line 49
    .end local v10    # "iStart":I
    .restart local p1    # "iStart":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x3c

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 50
    .local v5, "iIndex":I
    :cond_5
    :goto_2
    add-int/lit8 v17, v5, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lsec/core/util/Markup;->mLenData:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x21

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, 0x3

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 60
    :cond_6
    if-ltz v5, :cond_13

    .line 61
    add-int/lit8 v9, v5, 0x1

    .line 62
    .local v9, "iPosStart":I
    const/4 v8, 0x0

    .line 64
    .local v8, "iPosEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x3e

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 65
    .local v7, "iIndexTmp":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v7, v0, :cond_12

    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, "bFinish":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v7, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 68
    const/4 v3, 0x1

    .line 70
    :cond_7
    if-eqz v3, :cond_9

    .line 71
    add-int/lit8 v8, v7, -0x1

    .line 75
    :goto_3
    add-int/lit8 p1, v8, 0x1

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 77
    .local v4, "c":C
    const/16 v17, 0x21

    move/from16 v0, v17

    if-eq v4, v0, :cond_2

    const/16 v17, 0x3f

    move/from16 v0, v17

    if-eq v4, v0, :cond_2

    .line 79
    const/16 v17, 0x2f

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    move/from16 v10, p1

    .end local p1    # "iStart":I
    .restart local v10    # "iStart":I
    move/from16 v17, p1

    .line 80
    goto/16 :goto_0

    .line 52
    .end local v3    # "bFinish":Z
    .end local v4    # "c":C
    .end local v7    # "iIndexTmp":I
    .end local v8    # "iPosEnd":I
    .end local v9    # "iPosStart":I
    .end local v10    # "iStart":I
    .restart local p1    # "iStart":I
    :cond_8
    add-int/lit8 v6, v5, 0x3

    .line 53
    .local v6, "iIndexStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "-->"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 54
    .restart local v7    # "iIndexTmp":I
    if-lt v7, v6, :cond_5

    .line 55
    add-int/lit8 p1, v7, 0x3

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x3c

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto/16 :goto_2

    .line 73
    .end local v6    # "iIndexStart":I
    .restart local v3    # "bFinish":Z
    .restart local v8    # "iPosEnd":I
    .restart local v9    # "iPosStart":I
    :cond_9
    move v8, v7

    goto :goto_3

    .line 82
    .restart local v4    # "c":C
    :cond_a
    new-instance v13, Lcom/lsec/core/util/Markup$XmlItem;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/lsec/core/util/Markup$XmlItem;-><init>(Lcom/lsec/core/util/Markup;)V

    .line 83
    .local v13, "next":Lcom/lsec/core/util/Markup$XmlItem;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mNext:Lcom/lsec/core/util/Markup$XmlItem;

    .line 84
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mChild:Lcom/lsec/core/util/Markup$XmlItem;

    .line 85
    move-object/from16 v0, p2

    iput-object v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mParent:Lcom/lsec/core/util/Markup$XmlItem;

    .line 86
    iput v9, v13, Lcom/lsec/core/util/Markup$XmlItem;->mPosStart:I

    .line 87
    iput v8, v13, Lcom/lsec/core/util/Markup$XmlItem;->mPosEnd:I

    .line 88
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mStrBuff:Ljava/lang/String;

    .line 89
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mAttrs:Ljava/util/HashMap;

    .line 91
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 92
    .local v12, "iTmpStart":[I
    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v12, v17

    .line 94
    iget v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mPosEnd:I

    move/from16 v17, v0

    iget v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mPosStart:I

    move/from16 v18, v0

    sub-int v11, v17, v18

    .line 95
    .local v11, "iTmpLen":I
    :cond_b
    :goto_4
    const/16 v17, 0x0

    aget v17, v12, v17

    if-ltz v17, :cond_c

    const/16 v17, 0x0

    aget v17, v12, v17

    move/from16 v0, v17

    if-lt v0, v11, :cond_10

    .line 110
    :cond_c
    if-eqz v14, :cond_11

    .line 111
    iput-object v13, v14, Lcom/lsec/core/util/Markup$XmlItem;->mNext:Lcom/lsec/core/util/Markup$XmlItem;

    .line 115
    :cond_d
    :goto_5
    move-object v14, v13

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mItems:Ljava/util/List;

    move-object/from16 v17, v0

    if-nez v17, :cond_e

    .line 117
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lsec/core/util/Markup;->mItems:Ljava/util/List;

    .line 119
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mItems:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/util/Markup;->mItems:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_f
    if-nez v3, :cond_2

    .line 123
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/lsec/core/util/Markup;->ParseItem(ILcom/lsec/core/util/Markup$XmlItem;)I

    move-result p1

    .line 125
    goto/16 :goto_1

    .line 96
    :cond_10
    iget-object v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mStrBuff:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v18, v12, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2, v12}, Lcom/lsec/core/util/Markup;->FindToken(Ljava/lang/String;II[I)Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, "strTemp":Ljava/lang/String;
    if-eqz v16, :cond_c

    .line 100
    const/16 v17, 0x0

    aget v17, v12, v17

    move/from16 v0, v17

    if-ge v0, v11, :cond_c

    .line 103
    iget-object v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mStrBuff:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v18, v12, v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 104
    iget-object v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mStrBuff:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v18, v12, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2, v12}, Lcom/lsec/core/util/Markup;->FindToken(Ljava/lang/String;II[I)Ljava/lang/String;

    move-result-object v15

    .line 105
    .local v15, "strAttr":Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 106
    iget-object v0, v13, Lcom/lsec/core/util/Markup$XmlItem;->mAttrs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 112
    .end local v15    # "strAttr":Ljava/lang/String;
    .end local v16    # "strTemp":Ljava/lang/String;
    :cond_11
    if-eqz p2, :cond_d

    .line 113
    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/lsec/core/util/Markup$XmlItem;->mChild:Lcom/lsec/core/util/Markup$XmlItem;

    goto/16 :goto_5

    .line 126
    .end local v3    # "bFinish":Z
    .end local v4    # "c":C
    .end local v11    # "iTmpLen":I
    .end local v12    # "iTmpStart":[I
    .end local v13    # "next":Lcom/lsec/core/util/Markup$XmlItem;
    :cond_12
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lsec/core/util/Markup;->mNoError:Z

    .line 127
    const/16 v17, -0x1

    move/from16 v10, p1

    .end local p1    # "iStart":I
    .restart local v10    # "iStart":I
    goto/16 :goto_0

    .line 130
    .end local v7    # "iIndexTmp":I
    .end local v8    # "iPosEnd":I
    .end local v9    # "iPosStart":I
    .end local v10    # "iStart":I
    .restart local p1    # "iStart":I
    :cond_13
    const/16 v17, -0x1

    move/from16 v10, p1

    .end local p1    # "iStart":I
    .restart local v10    # "iStart":I
    goto/16 :goto_0
.end method

.method public ReadXML(Ljava/lang/String;)V
    .locals 2
    .param p1, "strXml"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mStrData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/util/Markup;->mLenData:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/util/Markup;->mNoError:Z

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/lsec/core/util/Markup;->ParseItem(ILcom/lsec/core/util/Markup$XmlItem;)I

    .line 32
    iget-boolean v0, p0, Lcom/lsec/core/util/Markup;->mNoError:Z

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/util/Markup$XmlItem;

    iput-object v0, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    .line 41
    :cond_0
    return-void
.end method

.method public ToRoot()V
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/lsec/core/util/Markup;->mNoError:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/lsec/core/util/Markup;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/util/Markup$XmlItem;

    iput-object v0, p0, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    .line 145
    :cond_0
    return-void
.end method
