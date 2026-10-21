.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private final mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsible:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private final mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private final mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private final mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 7
    .line 8
    const v1, 0x104004a

    .line 9
    .line 10
    .line 11
    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 12
    .line 13
    new-instance v1, Lcom/android/internal/widget/ActionBarView$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    new-instance v2, Lcom/android/internal/widget/ActionBarView$2;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    .line 30
    .line 31
    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    .line 32
    .line 33
    const v5, 0x10102ce

    .line 34
    .line 35
    .line 36
    move-object v7, p1

    .line 37
    move-object/from16 v6, p2

    .line 38
    .line 39
    invoke-virtual {p1, v6, v4, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x7

    .line 44
    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 49
    .line 50
    const/4 v5, 0x5

    .line 51
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 56
    .line 57
    const/16 v5, 0x9

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 64
    .line 65
    const/4 v5, 0x6

    .line 66
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const v6, 0x109001a

    .line 83
    .line 84
    .line 85
    const/16 v8, 0x10

    .line 86
    .line 87
    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    const v9, 0x109001d

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v9, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    check-cast v9, Landroid/view/ViewGroup;

    .line 99
    .line 100
    iput-object v9, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 101
    .line 102
    invoke-virtual {v5, v6, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 107
    .line 108
    iput-object v9, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 109
    .line 110
    iget-object v9, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 111
    .line 112
    invoke-virtual {v5, v6, v9, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 117
    .line 118
    iput-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 119
    .line 120
    const/4 v13, 0x1

    .line 121
    invoke-virtual {v6, v13}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 122
    .line 123
    .line 124
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 125
    .line 126
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    iget v9, v0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 136
    .line 137
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v1, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    .line 152
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    .line 164
    .line 165
    :cond_0
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 166
    .line 167
    invoke-virtual {v1, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 171
    .line 172
    invoke-virtual {v1, v13}, Landroid/view/View;->setFocusable(Z)V

    .line 173
    .line 174
    .line 175
    const/16 v1, 0xb

    .line 176
    .line 177
    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 182
    .line 183
    const/16 v1, 0xc

    .line 184
    .line 185
    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 190
    .line 191
    invoke-virtual {v4, v13, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 196
    .line 197
    const/16 v1, 0xe

    .line 198
    .line 199
    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 204
    .line 205
    const/16 v1, 0xf

    .line 206
    .line 207
    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 212
    .line 213
    const/16 v1, 0x11

    .line 214
    .line 215
    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 220
    .line 221
    const/16 v1, 0x8

    .line 222
    .line 223
    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 228
    .line 229
    .line 230
    const/16 v1, 0xa

    .line 231
    .line 232
    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_1

    .line 237
    .line 238
    invoke-virtual {v5, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 243
    .line 244
    iput v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 245
    .line 246
    iget v1, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 247
    .line 248
    or-int/2addr v1, v8

    .line 249
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 250
    .line 251
    .line 252
    :cond_1
    const/4 v1, 0x4

    .line 253
    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    iput v1, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 258
    .line 259
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    .line 261
    .line 262
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 263
    .line 264
    const/4 v8, 0x0

    .line 265
    const v9, 0x102002c

    .line 266
    .line 267
    .line 268
    const/4 v10, 0x0

    .line 269
    const/4 v11, 0x0

    .line 270
    iget-object v12, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 271
    .line 272
    move-object v6, v1

    .line 273
    move-object v7, p1

    .line 274
    invoke-direct/range {v6 .. v12}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 278
    .line 279
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 285
    .line 286
    invoke-virtual {v1, v13}, Landroid/view/View;->setClickable(Z)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 290
    .line 291
    invoke-virtual {v1, v13}, Landroid/view/View;->setFocusable(Z)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-nez v1, :cond_2

    .line 299
    .line 300
    invoke-virtual {p0, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 301
    .line 302
    .line 303
    :cond_2
    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/internal/widget/ActionBarView;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return p0
.end method

.method public static synthetic access$1500(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x4

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x1040047

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x1

    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v6, 0x2

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/4 v7, 0x3

    .line 66
    new-array v7, v7, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v1, v7, v5

    .line 69
    .line 70
    aput-object v2, v7, v4

    .line 71
    .line 72
    aput-object v0, v7, v6

    .line 73
    .line 74
    const v0, 0x1040049

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-array v3, v6, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v1, v3, v5

    .line 89
    .line 90
    aput-object v0, v3, v4

    .line 91
    .line 92
    const v0, 0x1040048

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_3
    :goto_1
    return-object v0
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private initTitle()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v2, 0x109001c

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/LinearLayout;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    const v2, 0x1020182

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    const v2, 0x1020181

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 48
    .line 49
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 98
    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 102
    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 110
    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 125
    .line 126
    const/16 v1, 0x8

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :goto_1
    return-void
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p2, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    :cond_0
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v0, v2

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    move v1, v2

    .line 46
    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 54
    .line 55
    .line 56
    :cond_4
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private updateHomeAccessibility(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method


# virtual methods
.method public canSplit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogo()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ProgressBar;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    const v1, 0x102037f

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public initProgress()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ProgressBar;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    const v1, 0x1020380

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    const/16 v1, 0x2710

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public isSplit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    move v3, v1

    .line 19
    :goto_0
    if-ge v3, v2, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-lez v4, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 29
    .line 30
    and-int/lit8 p1, p1, 0x8

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 45
    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    const/4 v0, -0x2

    .line 59
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    .line 61
    const/4 v0, -0x1

    .line 62
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    .line 64
    :cond_3
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 22
    .line 23
    and-int/lit8 v1, v1, 0x10

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eq v0, p0, :cond_1

    .line 32
    .line 33
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    sub-int v0, p5, p3

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int v7, v0, v1

    .line 15
    .line 16
    if-gtz v7, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const/4 v9, 0x1

    .line 24
    if-eqz v8, :cond_1

    .line 25
    .line 26
    move v10, v9

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, -0x1

    .line 29
    move v10, v0

    .line 30
    :goto_0
    if-eqz v8, :cond_2

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    sub-int v0, p4, p2

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-int/2addr v0, v1

    .line 44
    :goto_1
    move v11, v0

    .line 45
    if-eqz v8, :cond_3

    .line 46
    .line 47
    sub-int v0, p4, p2

    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    sub-int/2addr v0, v1

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :goto_2
    move v12, v0

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 72
    .line 73
    :goto_3
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    const/16 v14, 0x8

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eq v1, v14, :cond_5

    .line 84
    .line 85
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 86
    .line 87
    and-int/2addr v1, v14

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    move/from16 v16, v9

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    const/16 v16, 0x0

    .line 94
    .line 95
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-object v2, v6, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 100
    .line 101
    if-ne v1, v2, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eq v1, v14, :cond_6

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    :goto_5
    move v5, v0

    .line 114
    goto :goto_6

    .line 115
    :cond_6
    if-eqz v16, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    goto :goto_5

    .line 122
    :cond_7
    const/4 v5, 0x0

    .line 123
    :goto_6
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 124
    .line 125
    invoke-static {v12, v5, v8}, Lcom/android/internal/widget/AbsActionBarView;->next(IIZ)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    move-object/from16 v0, p0

    .line 130
    .line 131
    move v3, v13

    .line 132
    move v4, v7

    .line 133
    move v15, v5

    .line 134
    move v5, v8

    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v0, v12

    .line 140
    invoke-static {v0, v15, v8}, Lcom/android/internal/widget/AbsActionBarView;->next(IIZ)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 145
    .line 146
    const/4 v12, 0x2

    .line 147
    if-nez v1, :cond_c

    .line 148
    .line 149
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 150
    .line 151
    if-eq v1, v9, :cond_a

    .line 152
    .line 153
    if-eq v1, v12, :cond_8

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_8
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 157
    .line 158
    if-eqz v1, :cond_c

    .line 159
    .line 160
    if-eqz v16, :cond_9

    .line 161
    .line 162
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 163
    .line 164
    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/AbsActionBarView;->next(IIZ)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    :cond_9
    move v15, v0

    .line 169
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 170
    .line 171
    move-object/from16 v0, p0

    .line 172
    .line 173
    move v2, v15

    .line 174
    move v3, v13

    .line 175
    move v4, v7

    .line 176
    move v5, v8

    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    add-int/2addr v15, v0

    .line 182
    iget v0, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 183
    .line 184
    invoke-static {v15, v0, v8}, Lcom/android/internal/widget/AbsActionBarView;->next(IIZ)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    goto :goto_7

    .line 189
    :cond_a
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 190
    .line 191
    if-eqz v1, :cond_c

    .line 192
    .line 193
    if-eqz v16, :cond_b

    .line 194
    .line 195
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 196
    .line 197
    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/AbsActionBarView;->next(IIZ)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    :cond_b
    move v15, v0

    .line 202
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 203
    .line 204
    move-object/from16 v0, p0

    .line 205
    .line 206
    move v2, v15

    .line 207
    move v3, v13

    .line 208
    move v4, v7

    .line 209
    move v5, v8

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    add-int/2addr v15, v0

    .line 215
    iget v0, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 216
    .line 217
    invoke-static {v15, v0, v8}, Lcom/android/internal/widget/AbsActionBarView;->next(IIZ)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    :cond_c
    :goto_7
    move v15, v0

    .line 222
    iget-object v0, v6, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 223
    .line 224
    if-eqz v0, :cond_d

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-ne v0, v6, :cond_d

    .line 231
    .line 232
    iget-object v1, v6, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 233
    .line 234
    xor-int/lit8 v5, v8, 0x1

    .line 235
    .line 236
    move-object/from16 v0, p0

    .line 237
    .line 238
    move v2, v11

    .line 239
    move v3, v13

    .line 240
    move v4, v7

    .line 241
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 242
    .line 243
    .line 244
    iget-object v0, v6, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 245
    .line 246
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    mul-int/2addr v0, v10

    .line 251
    add-int/2addr v11, v0

    .line 252
    :cond_d
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 253
    .line 254
    if-eqz v0, :cond_e

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eq v0, v14, :cond_e

    .line 261
    .line 262
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 263
    .line 264
    xor-int/lit8 v5, v8, 0x1

    .line 265
    .line 266
    move-object/from16 v0, p0

    .line 267
    .line 268
    move v2, v11

    .line 269
    move v3, v13

    .line 270
    move v4, v7

    .line 271
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 272
    .line 273
    .line 274
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    mul-int/2addr v0, v10

    .line 281
    add-int/2addr v11, v0

    .line 282
    :cond_e
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 283
    .line 284
    const/4 v1, 0x0

    .line 285
    const/16 v2, 0x10

    .line 286
    .line 287
    if-eqz v0, :cond_f

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_f
    iget v0, v6, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 291
    .line 292
    and-int/2addr v0, v2

    .line 293
    if-eqz v0, :cond_10

    .line 294
    .line 295
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 296
    .line 297
    if-eqz v0, :cond_10

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_10
    move-object v0, v1

    .line 301
    :goto_8
    if-eqz v0, :cond_22

    .line 302
    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    instance-of v5, v4, Landroid/app/ActionBar$LayoutParams;

    .line 312
    .line 313
    if-eqz v5, :cond_11

    .line 314
    .line 315
    move-object v1, v4

    .line 316
    check-cast v1, Landroid/app/ActionBar$LayoutParams;

    .line 317
    .line 318
    :cond_11
    if-eqz v1, :cond_12

    .line 319
    .line 320
    iget v4, v1, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_12
    const v4, 0x800013

    .line 324
    .line 325
    .line 326
    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    if-eqz v1, :cond_13

    .line 331
    .line 332
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    invoke-static {v15, v7, v8}, Lcom/android/internal/widget/AbsActionBarView;->next(IIZ)I

    .line 337
    .line 338
    .line 339
    move-result v15

    .line 340
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    mul-int/2addr v7, v10

    .line 345
    add-int/2addr v11, v7

    .line 346
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 347
    .line 348
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 349
    .line 350
    goto :goto_a

    .line 351
    :cond_13
    const/4 v1, 0x0

    .line 352
    const/4 v7, 0x0

    .line 353
    :goto_a
    const v10, 0x800007

    .line 354
    .line 355
    .line 356
    and-int/2addr v10, v4

    .line 357
    const/4 v14, 0x3

    .line 358
    if-ne v10, v9, :cond_17

    .line 359
    .line 360
    iget v2, v6, Landroid/view/View;->mRight:I

    .line 361
    .line 362
    iget v13, v6, Landroid/view/View;->mLeft:I

    .line 363
    .line 364
    sub-int/2addr v2, v13

    .line 365
    sub-int/2addr v2, v5

    .line 366
    div-int/2addr v2, v12

    .line 367
    if-eqz v8, :cond_15

    .line 368
    .line 369
    add-int v13, v2, v5

    .line 370
    .line 371
    if-le v13, v15, :cond_14

    .line 372
    .line 373
    :goto_b
    const/4 v10, 0x5

    .line 374
    goto :goto_d

    .line 375
    :cond_14
    if-ge v2, v11, :cond_18

    .line 376
    .line 377
    :goto_c
    move v10, v14

    .line 378
    goto :goto_d

    .line 379
    :cond_15
    add-int v13, v2, v5

    .line 380
    .line 381
    if-ge v2, v15, :cond_16

    .line 382
    .line 383
    goto :goto_c

    .line 384
    :cond_16
    if-le v13, v11, :cond_18

    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_17
    if-nez v4, :cond_18

    .line 388
    .line 389
    const v10, 0x800003

    .line 390
    .line 391
    .line 392
    :cond_18
    :goto_d
    invoke-static {v10, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-eq v2, v9, :cond_1d

    .line 397
    .line 398
    if-eq v2, v14, :cond_1b

    .line 399
    .line 400
    const/4 v3, 0x5

    .line 401
    if-eq v2, v3, :cond_19

    .line 402
    .line 403
    const/4 v2, 0x0

    .line 404
    goto :goto_f

    .line 405
    :cond_19
    if-eqz v8, :cond_1a

    .line 406
    .line 407
    sub-int v2, v15, v5

    .line 408
    .line 409
    goto :goto_f

    .line 410
    :cond_1a
    sub-int v2, v11, v5

    .line 411
    .line 412
    goto :goto_f

    .line 413
    :cond_1b
    if-eqz v8, :cond_1c

    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_1c
    move v11, v15

    .line 417
    :goto_e
    move v2, v11

    .line 418
    goto :goto_f

    .line 419
    :cond_1d
    iget v2, v6, Landroid/view/View;->mRight:I

    .line 420
    .line 421
    iget v3, v6, Landroid/view/View;->mLeft:I

    .line 422
    .line 423
    sub-int/2addr v2, v3

    .line 424
    sub-int/2addr v2, v5

    .line 425
    div-int/2addr v2, v12

    .line 426
    :goto_f
    and-int/lit8 v3, v4, 0x70

    .line 427
    .line 428
    if-nez v4, :cond_1e

    .line 429
    .line 430
    const/16 v3, 0x10

    .line 431
    .line 432
    :cond_1e
    const/16 v4, 0x10

    .line 433
    .line 434
    if-eq v3, v4, :cond_21

    .line 435
    .line 436
    const/16 v4, 0x30

    .line 437
    .line 438
    if-eq v3, v4, :cond_20

    .line 439
    .line 440
    const/16 v4, 0x50

    .line 441
    .line 442
    if-eq v3, v4, :cond_1f

    .line 443
    .line 444
    const/4 v1, 0x0

    .line 445
    goto :goto_10

    .line 446
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    sub-int/2addr v3, v4

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    sub-int/2addr v3, v4

    .line 460
    sub-int v1, v3, v1

    .line 461
    .line 462
    goto :goto_10

    .line 463
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    add-int/2addr v1, v7

    .line 468
    goto :goto_10

    .line 469
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    iget v3, v6, Landroid/view/View;->mBottom:I

    .line 474
    .line 475
    iget v4, v6, Landroid/view/View;->mTop:I

    .line 476
    .line 477
    sub-int/2addr v3, v4

    .line 478
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    sub-int/2addr v3, v4

    .line 483
    sub-int/2addr v3, v1

    .line 484
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    sub-int/2addr v3, v1

    .line 489
    div-int/lit8 v1, v3, 0x2

    .line 490
    .line 491
    :goto_10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    add-int v4, v2, v3

    .line 496
    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 498
    .line 499
    .line 500
    move-result v5

    .line 501
    add-int/2addr v5, v1

    .line 502
    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 503
    .line 504
    .line 505
    invoke-static {v15, v3, v8}, Lcom/android/internal/widget/AbsActionBarView;->next(IIZ)I

    .line 506
    .line 507
    .line 508
    :cond_22
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 509
    .line 510
    if-eqz v0, :cond_23

    .line 511
    .line 512
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 513
    .line 514
    .line 515
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 516
    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    div-int/2addr v0, v12

    .line 522
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 523
    .line 524
    iget v2, v6, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 525
    .line 526
    neg-int v3, v0

    .line 527
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    add-int/2addr v4, v2

    .line 532
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 533
    .line 534
    .line 535
    :cond_23
    return-void
.end method

.method public onMeasure(II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    .line 8
    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v2, :cond_5

    .line 13
    .line 14
    move v2, v4

    .line 15
    move v5, v2

    .line 16
    :goto_0
    if-ge v2, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-eq v7, v3, :cond_1

    .line 27
    .line 28
    iget-object v7, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 29
    .line 30
    if-ne v6, v7, :cond_0

    .line 31
    .line 32
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_1

    .line 37
    .line 38
    :cond_0
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-eq v6, v7, :cond_1

    .line 41
    .line 42
    add-int/lit8 v5, v5, 0x1

    .line 43
    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    move v6, v4

    .line 54
    :goto_1
    if-ge v6, v2, :cond_4

    .line 55
    .line 56
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 57
    .line 58
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eq v7, v3, :cond_3

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    if-nez v5, :cond_5

    .line 74
    .line 75
    invoke-virtual {v0, v4, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/high16 v5, 0x40000000    # 2.0f

    .line 84
    .line 85
    if-ne v2, v5, :cond_27

    .line 86
    .line 87
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/high16 v6, -0x80000000

    .line 92
    .line 93
    if-ne v2, v6, :cond_26

    .line 94
    .line 95
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iget v7, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 100
    .line 101
    if-ltz v7, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    add-int/2addr v9, v8

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    sub-int v11, v7, v9

    .line 126
    .line 127
    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    invoke-static {v11, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    sub-int v8, v2, v8

    .line 136
    .line 137
    sub-int/2addr v8, v10

    .line 138
    div-int/lit8 v10, v8, 0x2

    .line 139
    .line 140
    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    if-eqz v14, :cond_7

    .line 143
    .line 144
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    if-eq v14, v3, :cond_7

    .line 149
    .line 150
    iget v14, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 151
    .line 152
    and-int/2addr v14, v3

    .line 153
    if-eqz v14, :cond_7

    .line 154
    .line 155
    const/4 v14, 0x1

    .line 156
    goto :goto_3

    .line 157
    :cond_7
    move v14, v4

    .line 158
    :goto_3
    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 159
    .line 160
    if-eqz v15, :cond_8

    .line 161
    .line 162
    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_8
    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 166
    .line 167
    :goto_4
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 172
    .line 173
    if-gez v4, :cond_9

    .line 174
    .line 175
    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    goto :goto_5

    .line 180
    :cond_9
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    :goto_5
    invoke-virtual {v15, v4, v13}, Landroid/view/View;->measure(II)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eq v4, v3, :cond_a

    .line 192
    .line 193
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 198
    .line 199
    if-eq v4, v5, :cond_b

    .line 200
    .line 201
    :cond_a
    if-eqz v14, :cond_c

    .line 202
    .line 203
    :cond_b
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-virtual {v15}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    add-int/2addr v5, v4

    .line 212
    sub-int/2addr v8, v5

    .line 213
    const/4 v15, 0x0

    .line 214
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    sub-int v5, v8, v5

    .line 219
    .line 220
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    goto :goto_6

    .line 225
    :cond_c
    const/4 v15, 0x0

    .line 226
    move v5, v10

    .line 227
    move v4, v15

    .line 228
    :goto_6
    iget-object v6, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 229
    .line 230
    if-eqz v6, :cond_d

    .line 231
    .line 232
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    if-ne v6, v0, :cond_d

    .line 237
    .line 238
    iget-object v6, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 239
    .line 240
    invoke-virtual {v0, v6, v8, v13, v15}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    iget-object v6, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 245
    .line 246
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    sub-int/2addr v10, v6

    .line 251
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    :cond_d
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 256
    .line 257
    if-eqz v6, :cond_e

    .line 258
    .line 259
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-eq v6, v3, :cond_e

    .line 264
    .line 265
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 266
    .line 267
    invoke-virtual {v0, v6, v8, v12, v15}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 272
    .line 273
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    sub-int/2addr v10, v6

    .line 278
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    :cond_e
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 283
    .line 284
    const/4 v12, 0x2

    .line 285
    if-nez v6, :cond_13

    .line 286
    .line 287
    iget v6, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 288
    .line 289
    const/4 v13, 0x1

    .line 290
    if-eq v6, v13, :cond_11

    .line 291
    .line 292
    if-eq v6, v12, :cond_f

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_f
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 296
    .line 297
    if-eqz v6, :cond_13

    .line 298
    .line 299
    iget v6, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 300
    .line 301
    if-eqz v14, :cond_10

    .line 302
    .line 303
    mul-int/2addr v6, v12

    .line 304
    :cond_10
    sub-int/2addr v8, v6

    .line 305
    const/4 v13, 0x0

    .line 306
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    sub-int/2addr v5, v6

    .line 311
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 316
    .line 317
    const/high16 v14, -0x80000000

    .line 318
    .line 319
    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 320
    .line 321
    .line 322
    move-result v15

    .line 323
    const/high16 v14, 0x40000000    # 2.0f

    .line 324
    .line 325
    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    invoke-virtual {v6, v15, v3}, Landroid/view/View;->measure(II)V

    .line 330
    .line 331
    .line 332
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 333
    .line 334
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    sub-int/2addr v8, v3

    .line 339
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    sub-int/2addr v5, v3

    .line 344
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    goto :goto_7

    .line 349
    :cond_11
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 350
    .line 351
    if-eqz v3, :cond_13

    .line 352
    .line 353
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 354
    .line 355
    if-eqz v14, :cond_12

    .line 356
    .line 357
    mul-int/2addr v3, v12

    .line 358
    :cond_12
    sub-int/2addr v8, v3

    .line 359
    const/4 v6, 0x0

    .line 360
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    sub-int/2addr v5, v3

    .line 365
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 370
    .line 371
    const/high16 v13, -0x80000000

    .line 372
    .line 373
    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 374
    .line 375
    .line 376
    move-result v14

    .line 377
    const/high16 v13, 0x40000000    # 2.0f

    .line 378
    .line 379
    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 380
    .line 381
    .line 382
    move-result v15

    .line 383
    invoke-virtual {v5, v14, v15}, Landroid/view/View;->measure(II)V

    .line 384
    .line 385
    .line 386
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 387
    .line 388
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    sub-int/2addr v8, v5

    .line 393
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    sub-int/2addr v3, v5

    .line 398
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    :cond_13
    :goto_7
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 403
    .line 404
    const/4 v6, 0x0

    .line 405
    if-eqz v3, :cond_14

    .line 406
    .line 407
    goto :goto_8

    .line 408
    :cond_14
    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 409
    .line 410
    and-int/lit8 v3, v3, 0x10

    .line 411
    .line 412
    if-eqz v3, :cond_15

    .line 413
    .line 414
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 415
    .line 416
    if-eqz v3, :cond_15

    .line 417
    .line 418
    goto :goto_8

    .line 419
    :cond_15
    move-object v3, v6

    .line 420
    :goto_8
    if-eqz v3, :cond_1f

    .line 421
    .line 422
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 423
    .line 424
    .line 425
    move-result-object v13

    .line 426
    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 427
    .line 428
    .line 429
    move-result-object v13

    .line 430
    instance-of v14, v13, Landroid/app/ActionBar$LayoutParams;

    .line 431
    .line 432
    if-eqz v14, :cond_16

    .line 433
    .line 434
    move-object v6, v13

    .line 435
    check-cast v6, Landroid/app/ActionBar$LayoutParams;

    .line 436
    .line 437
    :cond_16
    if-eqz v6, :cond_17

    .line 438
    .line 439
    iget v14, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 440
    .line 441
    iget v15, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 442
    .line 443
    add-int/2addr v14, v15

    .line 444
    iget v15, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 445
    .line 446
    iget v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 447
    .line 448
    add-int/2addr v12, v15

    .line 449
    move v15, v14

    .line 450
    goto :goto_9

    .line 451
    :cond_17
    const/4 v12, 0x0

    .line 452
    const/4 v15, 0x0

    .line 453
    :goto_9
    iget v14, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 454
    .line 455
    move/from16 v16, v7

    .line 456
    .line 457
    const/4 v7, -0x2

    .line 458
    if-gtz v14, :cond_19

    .line 459
    .line 460
    :cond_18
    const/high16 v14, -0x80000000

    .line 461
    .line 462
    goto :goto_a

    .line 463
    :cond_19
    iget v14, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 464
    .line 465
    if-eq v14, v7, :cond_18

    .line 466
    .line 467
    const/high16 v14, 0x40000000    # 2.0f

    .line 468
    .line 469
    :goto_a
    iget v7, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 470
    .line 471
    if-ltz v7, :cond_1a

    .line 472
    .line 473
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    .line 474
    .line 475
    .line 476
    move-result v11

    .line 477
    :cond_1a
    sub-int/2addr v11, v12

    .line 478
    const/4 v7, 0x0

    .line 479
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    .line 480
    .line 481
    .line 482
    move-result v11

    .line 483
    iget v12, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 484
    .line 485
    const/4 v7, -0x2

    .line 486
    if-eq v12, v7, :cond_1b

    .line 487
    .line 488
    const/high16 v7, 0x40000000    # 2.0f

    .line 489
    .line 490
    goto :goto_b

    .line 491
    :cond_1b
    const/high16 v7, -0x80000000

    .line 492
    .line 493
    :goto_b
    if-ltz v12, :cond_1c

    .line 494
    .line 495
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    .line 496
    .line 497
    .line 498
    move-result v12

    .line 499
    goto :goto_c

    .line 500
    :cond_1c
    move v12, v8

    .line 501
    :goto_c
    sub-int/2addr v12, v15

    .line 502
    move/from16 v17, v2

    .line 503
    .line 504
    const/4 v2, 0x0

    .line 505
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    .line 506
    .line 507
    .line 508
    move-result v12

    .line 509
    if-eqz v6, :cond_1d

    .line 510
    .line 511
    iget v2, v6, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 512
    .line 513
    goto :goto_d

    .line 514
    :cond_1d
    const v2, 0x800013

    .line 515
    .line 516
    .line 517
    :goto_d
    and-int/lit8 v2, v2, 0x7

    .line 518
    .line 519
    const/4 v6, 0x1

    .line 520
    if-ne v2, v6, :cond_1e

    .line 521
    .line 522
    iget v2, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 523
    .line 524
    const/4 v6, -0x1

    .line 525
    if-ne v2, v6, :cond_1e

    .line 526
    .line 527
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    const/4 v6, 0x2

    .line 532
    mul-int/lit8 v12, v2, 0x2

    .line 533
    .line 534
    :cond_1e
    invoke-static {v12, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    invoke-virtual {v3, v2, v6}, Landroid/view/View;->measure(II)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    add-int/2addr v2, v15

    .line 550
    sub-int/2addr v8, v2

    .line 551
    goto :goto_e

    .line 552
    :cond_1f
    move/from16 v17, v2

    .line 553
    .line 554
    move/from16 v16, v7

    .line 555
    .line 556
    :goto_e
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 557
    .line 558
    add-int/2addr v8, v4

    .line 559
    iget v3, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 560
    .line 561
    const/high16 v4, 0x40000000    # 2.0f

    .line 562
    .line 563
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    const/4 v4, 0x0

    .line 568
    invoke-virtual {v0, v2, v8, v3, v4}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 569
    .line 570
    .line 571
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 572
    .line 573
    if-eqz v2, :cond_20

    .line 574
    .line 575
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    sub-int/2addr v5, v2

    .line 580
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 581
    .line 582
    .line 583
    :cond_20
    iget v2, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 584
    .line 585
    if-gtz v2, :cond_23

    .line 586
    .line 587
    move v2, v4

    .line 588
    :goto_f
    if-ge v4, v1, :cond_22

    .line 589
    .line 590
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    add-int/2addr v3, v9

    .line 599
    if-le v3, v2, :cond_21

    .line 600
    .line 601
    move v2, v3

    .line 602
    :cond_21
    add-int/lit8 v4, v4, 0x1

    .line 603
    .line 604
    goto :goto_f

    .line 605
    :cond_22
    move/from16 v3, v17

    .line 606
    .line 607
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 608
    .line 609
    .line 610
    goto :goto_10

    .line 611
    :cond_23
    move/from16 v7, v16

    .line 612
    .line 613
    move/from16 v3, v17

    .line 614
    .line 615
    invoke-virtual {v0, v3, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 616
    .line 617
    .line 618
    :goto_10
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 619
    .line 620
    if-eqz v1, :cond_24

    .line 621
    .line 622
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 627
    .line 628
    .line 629
    :cond_24
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 630
    .line 631
    if-eqz v1, :cond_25

    .line 632
    .line 633
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    const/16 v2, 0x8

    .line 638
    .line 639
    if-eq v1, v2, :cond_25

    .line 640
    .line 641
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 642
    .line 643
    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 644
    .line 645
    const/4 v4, 0x2

    .line 646
    mul-int/2addr v2, v4

    .line 647
    sub-int v2, v3, v2

    .line 648
    .line 649
    const/high16 v3, 0x40000000    # 2.0f

    .line 650
    .line 651
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 652
    .line 653
    .line 654
    move-result v2

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 656
    .line 657
    .line 658
    move-result v3

    .line 659
    const/high16 v4, -0x80000000

    .line 660
    .line 661
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 662
    .line 663
    .line 664
    move-result v3

    .line 665
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 666
    .line 667
    .line 668
    :cond_25
    return-void

    .line 669
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 670
    .line 671
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    const-string v3, " can only be used with android:layout_height=\"wrap_content\""

    .line 680
    .line 681
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    throw v1

    .line 689
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 690
    .line 691
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    const-string v3, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    .line 700
    .line 701
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw v1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean p1, p1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 29
    .line 30
    return-object v1
.end method

.method public setCollapsible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    xor-int v1, p1, v0

    .line 8
    .line 9
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 10
    .line 11
    and-int/lit8 v0, v1, 0x3f

    .line 12
    .line 13
    if-eqz v0, :cond_11

    .line 14
    .line 15
    and-int/lit8 v0, v1, 0x4

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    and-int/lit8 v0, p1, 0x4

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move v0, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 29
    .line 30
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 31
    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 36
    .line 37
    .line 38
    :cond_2
    and-int/lit8 v0, v1, 0x1

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    and-int/lit8 v4, p1, 0x1

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    move v4, v3

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move v4, v2

    .line 53
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 54
    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    :goto_3
    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    and-int/lit8 v0, v1, 0x8

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    and-int/lit8 v0, p1, 0x8

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :cond_7
    :goto_4
    and-int/lit8 v0, p1, 0x2

    .line 83
    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    move v0, v3

    .line 87
    goto :goto_5

    .line 88
    :cond_8
    move v0, v2

    .line 89
    :goto_5
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 90
    .line 91
    and-int/lit8 v4, v4, 0x4

    .line 92
    .line 93
    if-eqz v4, :cond_9

    .line 94
    .line 95
    move v4, v3

    .line 96
    goto :goto_6

    .line 97
    :cond_9
    move v4, v2

    .line 98
    :goto_6
    if-nez v0, :cond_a

    .line 99
    .line 100
    if-eqz v4, :cond_a

    .line 101
    .line 102
    move v4, v3

    .line 103
    goto :goto_7

    .line 104
    :cond_a
    move v4, v2

    .line 105
    :goto_7
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 106
    .line 107
    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 108
    .line 109
    .line 110
    if-nez v0, :cond_b

    .line 111
    .line 112
    if-eqz v4, :cond_c

    .line 113
    .line 114
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 115
    .line 116
    if-nez v0, :cond_c

    .line 117
    .line 118
    move v0, v2

    .line 119
    goto :goto_8

    .line 120
    :cond_c
    const/16 v0, 0x8

    .line 121
    .line 122
    :goto_8
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 123
    .line 124
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    and-int/lit8 v0, v1, 0x10

    .line 128
    .line 129
    if-eqz v0, :cond_e

    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 132
    .line 133
    if-eqz v0, :cond_e

    .line 134
    .line 135
    and-int/lit8 v4, p1, 0x10

    .line 136
    .line 137
    if-eqz v4, :cond_d

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    goto :goto_9

    .line 143
    :cond_d
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    :cond_e
    :goto_9
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    if-eqz v0, :cond_10

    .line 149
    .line 150
    and-int/lit8 v0, v1, 0x20

    .line 151
    .line 152
    if-eqz v0, :cond_10

    .line 153
    .line 154
    and-int/lit8 p1, p1, 0x20

    .line 155
    .line 156
    if-eqz p1, :cond_f

    .line 157
    .line 158
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 159
    .line 160
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 164
    .line 165
    const/4 v0, 0x2

    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_a

    .line 170
    :cond_f
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 178
    .line 179
    .line 180
    :cond_10
    :goto_a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 181
    .line 182
    .line 183
    goto :goto_b

    .line 184
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 185
    .line 186
    .line 187
    :goto_b
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    move v1, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, -0x2

    .line 35
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 2
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    new-instance v0, Landroid/widget/ActionMenuPresenter;

    .line 46
    .line 47
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 53
    .line 54
    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 58
    .line 59
    const v0, 0x1020186

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setId(I)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-direct {p2, p0, v0}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 72
    .line 73
    :cond_3
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    const/4 v0, -0x2

    .line 76
    const/4 v1, -0x1

    .line 77
    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    .line 81
    .line 82
    if-nez v2, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const v2, 0x1120002

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 104
    .line 105
    invoke-virtual {p1, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/widget/ActionMenuView;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/view/ViewGroup;

    .line 116
    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    if-eq v0, p0, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 129
    .line 130
    const/4 v3, 0x0

    .line 131
    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 149
    .line 150
    const/4 v4, 0x1

    .line 151
    invoke-virtual {v2, v3, v4}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 155
    .line 156
    const v3, 0x7fffffff

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 160
    .line 161
    .line 162
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 163
    .line 164
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 165
    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 170
    .line 171
    invoke-virtual {p1, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Landroid/widget/ActionMenuView;

    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 178
    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroid/view/ViewGroup;

    .line 186
    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 190
    .line 191
    if-eq v0, v1, :cond_6

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 204
    .line 205
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_7
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .line 211
    .line 212
    :goto_0
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 213
    .line 214
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .line 3
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 5
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_8

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    if-eq p1, v2, :cond_4

    .line 32
    .line 33
    if-eq p1, v1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 37
    .line 38
    if-eqz v0, :cond_7

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 41
    .line 42
    if-eqz v1, :cond_7

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 49
    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    new-instance v0, Landroid/widget/Spinner;

    .line 53
    .line 54
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const v2, 0x10102d7

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 64
    .line 65
    const v1, 0x1020180

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Landroid/widget/LinearLayout;

    .line 72
    .line 73
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    const v2, 0x10102f4

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .line 85
    const/4 v1, -0x2

    .line 86
    const/4 v2, -0x1

    .line 87
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    .line 90
    const/16 v1, 0x11

    .line 91
    .line 92
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 97
    .line 98
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 108
    .line 109
    if-eq v0, v1, :cond_6

    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 131
    .line 132
    .line 133
    :cond_8
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, -0x1

    .line 40
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, -0x2

    .line 55
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    move v2, v1

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    const/16 v2, 0x8

    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    if-nez p1, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const v2, 0x1120002

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 115
    .line 116
    const/4 v2, 0x1

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 121
    .line 122
    const v1, 0x7fffffff

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 129
    .line 130
    .line 131
    :cond_8
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    move p1, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v2

    .line 20
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 28
    .line 29
    and-int/2addr p1, v2

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 41
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    :cond_1
    const/4 p1, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move p1, v1

    .line 51
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move v1, v2

    .line 57
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
