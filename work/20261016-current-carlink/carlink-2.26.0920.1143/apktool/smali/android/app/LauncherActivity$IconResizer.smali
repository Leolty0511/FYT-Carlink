.class public Landroid/app/LauncherActivity$IconResizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconResizer"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mIconHeight:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/app/LauncherActivity;


# direct methods
.method public constructor <init>(Landroid/app/LauncherActivity;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 8
    .line 9
    iput v0, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Canvas;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/high16 v0, 0x1050000

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    float-to-int p1, p1

    .line 46
    iput p1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 47
    .line 48
    iput p1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 1
    iget v0, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 2
    .line 3
    iget v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    instance-of v4, p1, Landroid/graphics/drawable/PaintDrawable;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    move-object v4, p1

    .line 18
    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    .line 19
    .line 20
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    if-lez v0, :cond_6

    .line 27
    .line 28
    if-lez v1, :cond_6

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-lt v0, v2, :cond_2

    .line 32
    .line 33
    if-ge v1, v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-ge v2, v0, :cond_6

    .line 37
    .line 38
    if-ge v3, v1, :cond_6

    .line 39
    .line 40
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 41
    .line 42
    iget v6, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 43
    .line 44
    iget v7, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 45
    .line 46
    invoke-static {v6, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    iget-object v6, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 51
    .line 52
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    .line 54
    .line 55
    iget-object v7, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    sub-int/2addr v0, v2

    .line 65
    div-int/lit8 v0, v0, 0x2

    .line 66
    .line 67
    sub-int/2addr v1, v3

    .line 68
    div-int/lit8 v1, v1, 0x2

    .line 69
    .line 70
    add-int/2addr v2, v0

    .line 71
    add-int/2addr v3, v1

    .line 72
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 81
    .line 82
    .line 83
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 84
    .line 85
    iget-object v0, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p1, v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_2
    :goto_0
    int-to-float v5, v2

    .line 99
    int-to-float v6, v3

    .line 100
    div-float/2addr v5, v6

    .line 101
    if-le v2, v3, :cond_3

    .line 102
    .line 103
    int-to-float v1, v0

    .line 104
    div-float/2addr v1, v5

    .line 105
    float-to-int v1, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    if-le v3, v2, :cond_4

    .line 108
    .line 109
    int-to-float v0, v1

    .line 110
    mul-float/2addr v0, v5

    .line 111
    float-to-int v0, v0

    .line 112
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    const/4 v3, -0x1

    .line 117
    if-eq v2, v3, :cond_5

    .line 118
    .line 119
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 123
    .line 124
    :goto_2
    iget v3, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 125
    .line 126
    iget v5, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 127
    .line 128
    invoke-static {v3, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v3, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 133
    .line 134
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    .line 136
    .line 137
    iget-object v5, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 144
    .line 145
    .line 146
    iget v5, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 147
    .line 148
    sub-int/2addr v5, v0

    .line 149
    div-int/lit8 v5, v5, 0x2

    .line 150
    .line 151
    iget v6, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 152
    .line 153
    sub-int/2addr v6, v1

    .line 154
    div-int/lit8 v6, v6, 0x2

    .line 155
    .line 156
    add-int/2addr v0, v5

    .line 157
    add-int/2addr v1, v6

    .line 158
    invoke-virtual {p1, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 167
    .line 168
    .line 169
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 170
    .line 171
    iget-object v0, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-direct {p1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    .line 182
    .line 183
    :cond_6
    :goto_3
    return-object p1
.end method
