.class public Lmodule/sound/C8288$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C8288;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C8288;


# direct methods
.method public constructor <init>(Lmodule/sound/C8288;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C8288$a;->a:Lmodule/sound/C8288;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Ly0/f;->L:I

    mul-int/lit8 v0, v0, 0x14

    sget v1, Ly0/f;->M:I

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    div-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lmodule/sound/C8288$a;->a:Lmodule/sound/C8288;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/16 v3, 0xa8

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Lmodule/sound/C8288;->L1([I)V

    return-void
.end method
