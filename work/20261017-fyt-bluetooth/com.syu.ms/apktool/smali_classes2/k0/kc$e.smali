.class public Lk0/kc$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kc;


# direct methods
.method public constructor <init>(Lk0/kc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kc$e;->a:Lk0/kc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/kc$e;->a:Lk0/kc;

    invoke-static {v0}, Lk0/kc;->h3(Lk0/kc;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/kc$e;->a:Lk0/kc;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/kc;->i:B

    return-void
.end method
