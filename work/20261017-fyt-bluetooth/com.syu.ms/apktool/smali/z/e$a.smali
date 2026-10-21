.class public Lz/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/e;->d([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz/e;


# direct methods
.method public constructor <init>(Lz/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/e$a;->a:Lz/e;

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
