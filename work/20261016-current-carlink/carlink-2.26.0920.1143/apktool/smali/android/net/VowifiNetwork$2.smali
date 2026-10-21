.class Landroid/net/VowifiNetwork$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/okhttp/Dns;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/VowifiNetwork;->maybeInitHttpClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/VowifiNetwork;


# direct methods
.method public constructor <init>(Landroid/net/VowifiNetwork;)V
    .locals 0

    iput-object p1, p0, Landroid/net/VowifiNetwork$2;->this$0:Landroid/net/VowifiNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/VowifiNetwork$2;->this$0:Landroid/net/VowifiNetwork;

    invoke-virtual {v0, p1}, Landroid/net/VowifiNetwork;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
