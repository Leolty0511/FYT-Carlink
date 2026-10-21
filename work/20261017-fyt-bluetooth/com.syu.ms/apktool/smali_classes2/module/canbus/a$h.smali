.class public Lmodule/canbus/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/a;


# direct methods
.method public constructor <init>(Lmodule/canbus/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/a$h;->a:Lmodule/canbus/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/a$h;->a:Lmodule/canbus/a;

    iget-byte v1, v0, Lmodule/canbus/a;->m:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/a;->m:B

    const/4 v2, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lmodule/canbus/a;->k3(Lmodule/canbus/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/canbus/a$h;->a:Lmodule/canbus/a;

    iput-byte v2, v0, Lmodule/canbus/a;->m:B

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x81
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data
.end method
