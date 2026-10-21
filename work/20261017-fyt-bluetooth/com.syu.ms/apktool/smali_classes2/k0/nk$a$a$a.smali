.class public Lk0/nk$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/nk$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nk$a$a;


# direct methods
.method public constructor <init>(Lk0/nk$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nk$a$a$a;->a:Lk0/nk$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/nk$a$a$a;->a:Lk0/nk$a$a;

    iget-object v0, v0, Lk0/nk$a$a;->a:Lk0/nk$a;

    iget-object v0, v0, Lk0/nk$a;->a:Lk0/nk;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/nk;->h:Ljava/lang/String;

    return-void
.end method
