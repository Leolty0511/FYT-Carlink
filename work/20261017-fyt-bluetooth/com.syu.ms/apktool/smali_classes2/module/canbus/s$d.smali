.class public Lmodule/canbus/s$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/s;


# direct methods
.method public constructor <init>(Lmodule/canbus/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/s$d;->a:Lmodule/canbus/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/s$d;->a:Lmodule/canbus/s;

    invoke-static {v0}, Lmodule/canbus/s;->B3(Lmodule/canbus/s;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/s$d;->a:Lmodule/canbus/s;

    const/16 v1, 0xa

    iput-byte v1, v0, Lmodule/canbus/s;->d0:B

    .line 3
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    const/16 v2, 0xff

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :goto_0
    sget v0, Lu0/b;->a0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    sget v0, Lk0/nt;->c:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x84
        0x2
        0x9
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc0
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
