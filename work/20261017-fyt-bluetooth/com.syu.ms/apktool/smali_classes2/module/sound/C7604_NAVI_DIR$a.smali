.class public Lmodule/sound/C7604_NAVI_DIR$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7604_NAVI_DIR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:[I

.field public b:I

.field public final synthetic c:Lmodule/sound/C7604_NAVI_DIR;


# direct methods
.method public constructor <init>(Lmodule/sound/C7604_NAVI_DIR;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7604_NAVI_DIR$a;->c:Lmodule/sound/C7604_NAVI_DIR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lmodule/sound/C7604_NAVI_DIR$a;->a:[I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iput v0, p0, Lmodule/sound/C7604_NAVI_DIR$a;->b:I

    iget v0, p0, Lmodule/sound/C7604_NAVI_DIR$a;->b:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lmodule/sound/C7604_NAVI_DIR$a;->a:[I

    iget-object v2, p0, Lmodule/sound/C7604_NAVI_DIR$a;->c:Lmodule/sound/C7604_NAVI_DIR;

    invoke-virtual {v2, v0}, Lmodule/sound/C7604_NAVI_DIR;->a2(I)I

    move-result v2

    aput v2, v1, v0

    .line 3
    iget v0, p0, Lmodule/sound/C7604_NAVI_DIR$a;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
