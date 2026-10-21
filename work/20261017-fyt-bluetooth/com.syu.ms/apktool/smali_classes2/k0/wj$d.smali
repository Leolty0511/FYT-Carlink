.class public Lk0/wj$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/wj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/wj;


# direct methods
.method public constructor <init>(Lk0/wj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/wj$d;->a:Lk0/wj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/wj$d;->a:Lk0/wj;

    iget v1, v0, Lk0/wj;->g:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/wj;->g:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 3
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lk0/wj;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/wj$d;->a:Lk0/wj;

    iput v3, v0, Lk0/wj;->g:I

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xdf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x42
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x42
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x42
    .end array-data
.end method
