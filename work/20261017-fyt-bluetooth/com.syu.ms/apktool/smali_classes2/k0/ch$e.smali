.class public Lk0/ch$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ch;


# direct methods
.method public constructor <init>(Lk0/ch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ch$e;->a:Lk0/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    iget-object v1, p0, Lk0/ch$e;->a:Lk0/ch;

    iget v1, v1, Lk0/ch;->k:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0xd

    if-ne v1, v0, :cond_0

    .line 2
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    invoke-static {}, Lk0/ch;->c3()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lk0/ch$e;->a:Lk0/ch;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/ch;->k:I

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1d01c6 -> :sswitch_0
        0x6001b7 -> :sswitch_0
        0x6201b7 -> :sswitch_0
        0x9601c7 -> :sswitch_0
        0x9701c7 -> :sswitch_0
        0x9801c7 -> :sswitch_0
        0x9d01c7 -> :sswitch_0
        0xbf01c7 -> :sswitch_0
        0xc001c7 -> :sswitch_0
        0xce01c7 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xa5
        0x2
        0x1
        0x0
    .end array-data
.end method
