.class public Lj0/b$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/b$m;->d(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj0/b$m;


# direct methods
.method public constructor <init>(Lj0/b$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/b$m$a;->a:Lj0/b$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lu0/b;->c:Lu0/h;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    return-void
.end method
