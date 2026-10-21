.class public Lk0/hh$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hh;


# direct methods
.method public constructor <init>(Lk0/hh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hh$c;->a:Lk0/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/hh$c;->a:Lk0/hh;

    invoke-static {v0}, Lk0/hh;->c3(Lk0/hh;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/hh$c;->a:Lk0/hh;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/hh;->h:B

    return-void
.end method
