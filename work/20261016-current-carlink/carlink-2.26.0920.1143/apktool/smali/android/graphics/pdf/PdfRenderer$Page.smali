.class public final Landroid/graphics/pdf/PdfRenderer$Page;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# static fields
.field public static final RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mHeight:I

.field private final mIndex:I

.field private mNativePage:J

.field private final mWidth:I

.field final synthetic this$0:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method private constructor <init>(Landroid/graphics/pdf/PdfRenderer;I)V
    .locals 5

    .line 2
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 4
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->access$100(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;

    move-result-object v1

    .line 5
    sget-object v2, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->access$200(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v3

    invoke-static {v3, v4, p2, v1}, Landroid/graphics/pdf/PdfRenderer;->access$300(JILandroid/graphics/Point;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput p2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    .line 9
    iget p1, v1, Landroid/graphics/Point;->x:I

    iput p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    .line 10
    iget p1, v1, Landroid/graphics/Point;->y:I

    iput p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    const-string p1, "close"

    .line 11
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method private doClose()V
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    .line 5
    .line 6
    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfRenderer;->access$500(J)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    .line 13
    .line 14
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 15
    .line 16
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->access$602(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v1
.end method

.method private throwIfClosed()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Already closed"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public finalize()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    return v0
.end method

.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    move/from16 v13, p4

    .line 5
    .line 6
    iget-wide v2, v1, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmp-long v2, v2, v4

    .line 11
    .line 12
    if-eqz v2, :cond_e

    .line 13
    .line 14
    const-string v2, "bitmap null"

    .line 15
    .line 16
    move-object/from16 v3, p1

    .line 17
    .line 18
    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v6, v2

    .line 23
    check-cast v6, Landroid/graphics/Bitmap;

    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 30
    .line 31
    if-ne v2, v3, :cond_d

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    if-ltz v2, :cond_0

    .line 38
    .line 39
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    if-ltz v2, :cond_0

    .line 42
    .line 43
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-gt v2, v3, :cond_0

    .line 50
    .line 51
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-gt v2, v3, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v2, "destBounds not in destination"

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 69
    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Matrix;->isAffine()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string/jumbo v2, "transform not affine"

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 87
    const/4 v3, 0x2

    .line 88
    if-eq v13, v3, :cond_5

    .line 89
    .line 90
    if-ne v13, v2, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string v2, "Unsupported render mode"

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_5
    :goto_2
    if-ne v13, v3, :cond_7

    .line 102
    .line 103
    if-eq v13, v2, :cond_6

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string v2, "Only single render mode supported"

    .line 109
    .line 110
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_7
    :goto_3
    const/4 v2, 0x0

    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 118
    .line 119
    move v7, v3

    .line 120
    goto :goto_4

    .line 121
    :cond_8
    move v7, v2

    .line 122
    :goto_4
    if-eqz v0, :cond_9

    .line 123
    .line 124
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 125
    .line 126
    :cond_9
    move v8, v2

    .line 127
    if-eqz v0, :cond_a

    .line 128
    .line 129
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_a
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    :goto_5
    move v9, v2

    .line 137
    if-eqz v0, :cond_b

    .line 138
    .line 139
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_b
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    :goto_6
    move v10, v0

    .line 147
    if-nez p3, :cond_c

    .line 148
    .line 149
    sub-int v0, v9, v7

    .line 150
    .line 151
    sub-int v2, v10, v8

    .line 152
    .line 153
    new-instance v3, Landroid/graphics/Matrix;

    .line 154
    .line 155
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 156
    .line 157
    .line 158
    int-to-float v0, v0

    .line 159
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    int-to-float v4, v4

    .line 164
    div-float/2addr v0, v4

    .line 165
    int-to-float v2, v2

    .line 166
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    int-to-float v4, v4

    .line 171
    div-float/2addr v2, v4

    .line 172
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 173
    .line 174
    .line 175
    int-to-float v0, v7

    .line 176
    int-to-float v2, v8

    .line 177
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 178
    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_c
    move-object/from16 v3, p3

    .line 182
    .line 183
    :goto_7
    iget-wide v11, v3, Landroid/graphics/Matrix;->native_instance:J

    .line 184
    .line 185
    sget-object v14, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    .line 186
    .line 187
    monitor-enter v14

    .line 188
    :try_start_0
    iget-object v0, v1, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    .line 189
    .line 190
    invoke-static {v0}, Landroid/graphics/pdf/PdfRenderer;->access$200(Landroid/graphics/pdf/PdfRenderer;)J

    .line 191
    .line 192
    .line 193
    move-result-wide v2

    .line 194
    iget-wide v4, v1, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    .line 195
    .line 196
    move/from16 v13, p4

    .line 197
    .line 198
    invoke-static/range {v2 .. v13}, Landroid/graphics/pdf/PdfRenderer;->access$400(JJLandroid/graphics/Bitmap;IIIIJI)V

    .line 199
    .line 200
    .line 201
    monitor-exit v14

    .line 202
    return-void

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    throw v0

    .line 206
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 207
    .line 208
    const-string v2, "Unsupported pixel format"

    .line 209
    .line 210
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :cond_e
    const/4 v0, 0x0

    .line 215
    throw v0
.end method
