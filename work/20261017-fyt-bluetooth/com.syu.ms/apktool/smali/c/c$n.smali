.class public Lc/c$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final synthetic d:Lc/c;


# direct methods
.method public constructor <init>(Lc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c$n;->d:Lc/c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lc/c$n;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lc/c$n;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lc/c$n;->c:Ljava/lang/String;

    return-void
.end method
