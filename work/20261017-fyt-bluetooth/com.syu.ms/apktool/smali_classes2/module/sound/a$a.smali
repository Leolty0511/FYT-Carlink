.class public Lmodule/sound/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/a;


# direct methods
.method public constructor <init>(Lmodule/sound/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/a$a;->a:Lmodule/sound/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ly0/h;->X(IZ)V

    return-void
.end method
