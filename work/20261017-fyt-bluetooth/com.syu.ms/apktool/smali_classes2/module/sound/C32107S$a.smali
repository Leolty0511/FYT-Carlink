.class public Lmodule/sound/C32107S$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C32107S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C32107S;


# direct methods
.method public constructor <init>(Lmodule/sound/C32107S;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C32107S$a;->a:Lmodule/sound/C32107S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/sound/C32107S$a;->a:Lmodule/sound/C32107S;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmodule/sound/C32107S;->j([I)V

    .line 2
    iget-object v0, p0, Lmodule/sound/C32107S$a;->a:Lmodule/sound/C32107S;

    iget v1, v0, Lmodule/sound/AudioDevice;->g:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmodule/sound/C32107S;->A1(IZ)V

    return-void
.end method
