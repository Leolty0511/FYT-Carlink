.class public Lmodule/canbus/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodule/canbus/i;->c3(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmodule/canbus/i;


# direct methods
.method public constructor <init>(Lmodule/canbus/i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lmodule/canbus/i$d;->b:Lmodule/canbus/i;

    iput p2, p0, Lmodule/canbus/i$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/16 v1, 0x5a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, -0x5b

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v1, v0, v1

    const/4 v4, 0x3

    const/16 v5, 0x3d

    aput-byte v5, v0, v4

    .line 1
    iget v6, p0, Lmodule/canbus/i$d;->a:I

    int-to-byte v6, v6

    const/4 v7, 0x4

    aput-byte v6, v0, v7

    const/4 v6, 0x5

    aput-byte v2, v0, v6

    const/4 v8, 0x6

    aput-byte v2, v0, v8

    invoke-static {v0}, Lmodule/canbus/i;->R3([B)V

    new-array v0, v6, [I

    const/16 v6, 0xe3

    aput v6, v0, v2

    aput v1, v0, v3

    aput v5, v0, v1

    .line 2
    iget v1, p0, Lmodule/canbus/i$d;->a:I

    aput v1, v0, v4

    aput v2, v0, v7

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/i$d;->b:Lmodule/canbus/i;

    iput-boolean v3, v0, Lmodule/canbus/i;->m:Z

    return-void
.end method
