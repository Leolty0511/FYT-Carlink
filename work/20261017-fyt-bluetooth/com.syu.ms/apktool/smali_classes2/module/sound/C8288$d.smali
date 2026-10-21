.class public Lmodule/sound/C8288$d;
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
    iput-object p1, p0, Lmodule/sound/C8288$d;->a:Lmodule/sound/C8288;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/sound/C8288$d;->a:Lmodule/sound/C8288;

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xab

    aput v3, v1, v2

    sget v2, Ly0/f;->R:I

    mul-int/lit8 v2, v2, 0x64

    sget v3, Ly0/f;->S:I

    div-int/2addr v2, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lmodule/sound/C8288;->L1([I)V

    return-void
.end method
