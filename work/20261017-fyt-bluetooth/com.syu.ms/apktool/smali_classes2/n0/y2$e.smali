.class public Ln0/y2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/y2;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/y2;


# direct methods
.method public constructor <init>(Ln0/y2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/y2$e;->a:Ln0/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Ln0/y2$e;->a:Ln0/y2;

    const/4 v0, 0x0

    iput-boolean v0, p1, Ln0/y2;->C:Z

    :cond_0
    return-void
.end method
