.class public final Le/f;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public final b:Lcom/syu/carlink/CarLinkService;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/CarLinkService;)V
    .locals 1

    .line 1
    const-string v0, "service"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Le/f;->b:Lcom/syu/carlink/CarLinkService;

    .line 10
    .line 11
    return-void
.end method
