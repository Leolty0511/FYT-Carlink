.class public Lk0/nd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nd;


# direct methods
.method public constructor <init>(Lk0/nd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nd$b;->a:Lk0/nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v0, v2, [I

    .line 9
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xee
        0x2
        0xa0
        0x5
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xee
        0x2
        0xa0
        0x4
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xee
        0x2
        0xa0
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xee
        0x2
        0xa0
        0x2
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc2
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xc2
        0x1
        0x2
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xc2
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xc2
        0x1
        0x0
    .end array-data
.end method
