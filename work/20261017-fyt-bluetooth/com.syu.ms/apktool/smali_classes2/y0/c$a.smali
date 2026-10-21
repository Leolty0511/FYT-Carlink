.class public Ly0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly0/c;


# direct methods
.method public constructor <init>(Ly0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/c$a;->a:Ly0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->a0:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ly0/c$a;->a:Ly0/c;

    invoke-virtual {v0}, Ly0/c;->k()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    const/16 v1, 0xff

    .line 3
    invoke-static {v0, v1}, Ly0/c;->x(II)V

    const/16 v0, 0x30

    .line 4
    invoke-static {v0, v1}, Ly0/c;->x(II)V

    :goto_0
    return-void
.end method
