.class Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emoji/EmojiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/emoji/EmojiFactory;


# direct methods
.method public constructor <init>(Landroid/emoji/EmojiFactory;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->this$0:Landroid/emoji/EmojiFactory;

    const/16 p1, 0x10

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget-object v0, p0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->this$0:Landroid/emoji/EmojiFactory;

    invoke-static {v0}, Landroid/emoji/EmojiFactory;->access$000(Landroid/emoji/EmojiFactory;)I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
