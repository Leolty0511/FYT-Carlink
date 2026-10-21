package com.google.android.projection.protocol;

import android.app.job.JobInfo;
import android.app.m;
import android.os.Handler;
import android.os.UserHandle;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.android.internal.logging.nano.MetricsProto;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes3.dex */
public class RadioStub extends Radio {
    private static final int STATUS_INVALID_INPUT = -20;
    private static final int STATUS_SUCCESS = 0;
    private static final String TAG = "RadioStub";
    private static final String[] mRadioTextTable = {"Pablo Honey - Radiohead", "Kind Of Blue (Legacy Edition) - Miles Davis", "Audioslave - Audioslave", "Disney's Greatest Volume 1 - Various", "The Essential Billy Joel - Billy Joel", "All Eyez On Me - 2Pac", "Lest We Forget - The Best Of - Marilyn Manson", "Sublime - Sublime", "Backstreet Boys - Backstreet Boys", "The Essential Bruce Springsteen - Bruce Springsteen", "Moondance - VAN MORRISON", "Tracy Chapman - Tracy Chapman", "The Essential Clash - The Clash", "Toxicity - System Of A Down", "Anthology: Through The Years - Tom Petty And The Heartbreakers", "Spice - Spice Girls", "Life After Death - The Notorious B.I.G.", "Time Well Wasted - Brad Paisley", "Continuum - John Mayer", "Come Away With Me - Norah Jones", "Three Cheers For Sweet Revenge - My Chemical Romance", "FutureSex_LoveSounds - Justin Timberlake", "Ocean Avenue - Yellowcard", "City Of Evil - Avenged Sevenfold", "Your Man - Josh Turner", "RENT - Original Motion Picture Soundtrack - RENT Soundtrack", "Begin To Hope - regina spektor", "The Poison (Deluxe Version) - Bullet For My Valentine", "Robbers & Cowards - Cold War Kids", "In the Aeroplane Over the Sea - Neutral Milk Hotel", "Tragic Kingdom - No Doubt", "Because Of The Times - Kings Of Leon", "Bangarang EP - Skrillex", "Parachutes - Coldplay", "The Essential Daryl Hall & John Oates - Daryl Hall & John Oates", "RIOT! - Paramore", "Wicked - Various Artists", "Viva La Vida Or Death And All His Friends - Coldplay", "The Essential Paul Simon - Paul Simon", "Boxer - The National", "Sound Of Silver - LCD Soundsystem", "Little Voice - Sara Bareilles", "The Reminder - Feist", "Taylor Swift - Taylor Swift", "The Temper Trap - The Temper Trap", "Coco - Colbie Caillat", "19 - Adele", "Exile On Mainstream - Matchbox Twenty", "So Wrong, It's Right - All Time Low", "Saturdays = Youth - M83", "Lady Antebellum - Lady Antebellum", "Crystal Castles - Crystal Castles", "It's Not Me, It's You - Lily Allen", "Now You're Gone - Basshunter", "Heavier Things - John Mayer", "Peaceful, The World Lays Me Down - Noah And The Whale", "Breakaway - Kelly Clarkson", "Dark Horse - Nickelback", "Songs For You, Truths For Me - James Morrison", "Be OK - Ingrid Michaelson", "Homesick - A Day To Remember", "R.O.O.T.S. - Flo Rida", "Californication - Red Hot Chili Peppers", "21st Century Breakdown - Green Day", "City Of Black & White - Mat Kearney", "Aim and Ignite [Deluxe Version] - fun.", "Raymond v Raymond - Usher", "Breakthrough - Colbie Caillat", "Dear Agony - Breaking Benjamin", "The Very Best Of Enya - Enya", "Michael Jackson's This Is It - Michael Jackson", "My World - Justin Bieber", "Immersion - Pendulum", "B.o.B Presents: The Adventures of Bobby Ray - B.o.B", "Jason Derulo - Jason Derulo", "Tourist History - Two Door Cinema Club", "Love Like Crazy - Lee Brice", "Brothers - The Black Keys", "High Violet (Expanded Edition) - The National", "The Shepherd's Dog - Iron and Wine", "Black Sands - Bonobo", "Meet The Orphans - Don Omar", "To The Sea - Jack Johnson", "Nightmare - Avenged Sevenfold", "Euphoria - Enrique Iglesias", "Mylo Xyloto - Coldplay", "Speak Now - Taylor Swift", "All About Tonight - Blake Shelton", "You Get What You Give - Zac Brown Band", "The Essential Dixie Chicks - Dixie Chicks", "Sidewalks - Matt & Kim", "The Band Perry - The Band Perry", "Leave A Whisper - Shinedown", "Enema Of The State - blink-182", "The King Is Dead - The Decemberists", "Scary Monsters and Nice Sprites EP - Skrillex", "34 Number Ones - Alan Jackson", "Fleet Foxes - Fleet Foxes", "Pink Friday - Nicki Minaj", "Sale El Sol - Shakira", "Get Closer (Deluxe Version) - Keith Urban", "Timestretch - Bassnectar", "Man On The Moon II: The Legend Of Mr. Rager - Kid Cudi", "Holding Onto Strings Better Left to Fray (Deluxe Version) - Seether", "Raw - Hopsin", "Prince Royce - Prince Royce", "Enjoy Yourself - Billy Currington", "American Tragedy - Hollywood Undead", "Victorious: Music From The Hit TV Show feat. Victoria Justice - Victorious Cast", "Vices & Virtues - Panic! At The Disco", "Wasting Light - Foo Fighters", "Goblin (Deluxe Edition) - Tyler, The Creator", "Young the Giant - Young the Giant", "Grouplove - Grouplove", "We The Best Forever - DJ Khaled", "Ritual Union - Little Dragon", "Circuital - My Morning Jacket", "When The Sun Goes Down - Selena Gomez & The Scene", "Planet Pit (Deluxe Version) - Pitbull", "In Light - Givers", "Section.80 - Kendrick Lamar", "Divergent Spectrum - Bassnectar", "Neighborhoods - blink-182", "Mayday Parade - Mayday Parade", "Neon - Chris Young", "Within and Without - Washed Out", "Never Trust A Happy Song - Grouplove", "Unbroken - Demi Lovato", "Vows - Kimbra", "Audio, Video, Disco. - Justice", "Take A Back Road - Rodney Atkins", "Life Is Good - Nas", "Halfway To Heaven - Brantley Gilbert", "Fire & Ice - Kaskade", "Strange Clouds - B.o.B", "What We Saw From The Cheap Seats - Regina Spektor", "Glee: The Music, Volume 7 - Glee Cast", "Pink Friday ... Roman Reloaded - Nicki Minaj", "Born To Die - Lana Del Rey", "Reign of Terror - Sleigh Bells", "My Head Is An Animal - Of Monsters and Men", "channel ORANGE - Frank Ocean", "Love Is A Four Letter Word - Jason Mraz", "The Hunger Games: Songs From District 12 And Beyond - Various Artists", "Visions - Grimes", "Handwritten - The Gaslight Anthem", "The Idler Wheel Is Wiser Than the Driver of the Screw and Whipping Cords Will Serve You More Than Ropes Will Ever Do - Fiona Apple", "Neck Of The Woods - Silversun Pickups", "Changed - Rascal Flatts", "Blown Away - Carrie Underwood", "The Lateness Of The Hour - Alex Clare", "Welcome To The Fishbowl - Kenny Chesney", "Dance Again...The Hits - Jennifer Lopez", "Part Of Me - Katy Perry", "We Found Love - Rihanna", "Tha Carter IV - Lil Wayne", "Pink Friday (Deluxe Edition) - Nicki Minaj", "Parachutes - Coldplay", "The Marshall Mathers LP - Eminem", "The Way - Benedict Francis", "Hot Rocks (1964-1971) (Remastered) - The Rolling Stones", "Stammtischzeit 2 - Diverse", "Give Me Everything (Feat. Afrojack, Nayer & Ne-Yo) - Pitbull", "Vapour - Tom Garrad-Cole", "Yeezus - Kanye West", "Femme Fatale (Deluxe Version) - Britney Spears", "Rendezvous - Walter Beasley", "Primetime - Baby Oliver", "Sasakyan Kita - K And The Boxers", "Power Trip (feat. Miguel) - J. Cole", "The Very Best Of Enya (Deluxe) - Enya", "Frozen (Original Motion Picture Soundtrack) - Various Artists", "Distant Lights - Burial", "Mastermind (Deluxe) - Rick Ross", "Swimming Pools (Drank) - Kendrick Lamar", "Dear Agony - Breaking Benjamin", "Greatest Hits - Fleetwood Mac", "Gian Francesco Malipiero: Endecatode - Maria Chiara Pavone", "Motivation and Watertower Grammer - Work Of Saws", "Need You Now - Lady Antebellum", "My Head Is An Animal - Of Monsters And Men", "Tembang Sunda: Classical Music from West Java, Indonesia - Ida Widawati", "Empire State Of Mind (Pt. II) - W.C.D.A.", "Tulpentussi E.P. - Krischmann & Klingenberg", "An Awesome Wave - alt-J", "Tha Carter III - Lil Wayne", "California 37 - Train", "Saxo de Oro - Sax Gold", "Doggystyle - Snoop Dogg", "The Hits - Brian Poole", "Rearviewmirror: Greatest Hits, 1991-2003 - Pearl Jam", "Inside - James Collins", "Never Be Yourself - Count Zero", "Best Sexy Songs Vol.2 - The Romantic Band", "Classical Poems - Various Artists", "I Like Girls In Russia - Thou", "4 - Beyonce", "Native (Deluxe) - OneRepublic", "La Historia - Carlos Ponce", "Spirtual Moves 3 - Acid Germs - Various Artists", "Contra - Vampire Weekend", "I Am Not A Human Being - Lil Wayne", "Sorry For Party Rocking - LMFAO", "Warrior (Deluxe Version) - Ke$ha", "Lil’ Troy Presents Parking Lot Pimpin’ - SK", "Radioactive (Explicit Version) - YelaWolf", "Soul of Istanbul - Soul of Istanbul", "Naked Emperor - Naked Emperor", "Asana: Music - Various", "Pink Friday ... Roman Reloaded - Nicki Minaj", "The Disparrows - The Disparrows", "Voices of the Cathedral - A Celebration Of A Cappella Chamber Music - Voices Of The Cathedral", "Some Girls (Deluxe Version) - The Rolling Stones", "Stronger (Deluxe Version) - Kelly Clarkson", "Vedette - Babasonicos", "The Come Ons - The Come Ons", "Collide With The Sky - Pierce The Veil", "The Foundation - Zac Brown Band", "How To Love - Lil Wayne", "T-Bone & Ty-Rat - T-Bone & Ty-Rat", "The Lumineers - The Lumineers", "Son of Sulphur - Crowpath", "Brushfire Fairytales (Bonus Version) - Jack Johnson", "The Networks, The Circuits, The Streams, The Harmonies - Burnside Project", "Redeverything - Don Diego The Blood", "She Wants EP - Lee Picton", "M-Guixx - Jumping Self", "Muthana Muthukumara - Pushpavanam Kuppusamy", "Da Master's Plan - M Ownly", "Reggae Mentalists (Caribbean Reggae Flavors) - Various Artists", "Parifornie - 3010", "Do Or Die - Ant Banks", "New Traditions - Southern Illinois University Edwardsville Wind Symphony", "Stand Beside Me in the Sun - Mark Nevin", "The Blueprint 3 - JAY Z", "Swingin' Lena Horne - Lena Horne", "Evanescence (Deluxe Version) - Evanescence", "Section.80 - Kendrick Lamar", "Punkrock´s Dead - South City Locos", "Lost Highway Saloon - Johnny Bush", "OK Computer - Radiohead", "De Dragul Tau (For Your Sake) - Marcel Pavel", "Khodah Negadar - Parsa", "Can't Get Enough - Tellex", "Missing You EP - Thomas Braxe", "Finally Famous - Big Sean", "Speakerboxxx/The Love Below - OutKast", "15 Hits - Ricky Naranjo Y Los Gamblers", "Live From The Greenhouse - Susan Unger", "Singendes Bayernland - Various Artists", "Unutulmaz Malatya Ezgileri - Nusret Gümüşboğa", "So Far Gone - Drake", "Detour Allure - Charlemagne", "Born This Way - Lady Gaga", "Frutta Latina Best Latin America, Vol. 1 - Gruppo Latino", "Looking 4 Myself (Deluxe Version) - Usher", "Arrolos de Salitre - Xabier Díaz e Guillerme Fernández", "American Capitalist (Deluxe) - Five Finger Death Punch", "The Wall (2011 - Remaster) - Pink Floyd", "Greatest Hits - Guns N' Roses", "Late Night Lounge - Hillton FM", "Billie Holiday - Live (Digitally Remastered) - Billie Holiday", "Bon Iver - Bon Iver", "Love Me (Feat. Future, Drake) - Lil Wayne", "The Call - Gotthard", "Vampire Weekend - Vampire Weekend", "Firefly - Denga, Manus", "Karat 1 - Karat", "Stranger Than Fiction - Kevin Gates", "Viva La Vida - Prospekt's March Edition - Coldplay", "Pavement Tune - The Frames", "Because Of You - Ne-Yo", "Oracular Spectacular - MGMT", "Incarcerated (Explicit) - Lil' Boosie", "Talk That Talk - Rihanna", "Scary Monsters And Nice Sprites - Skrillex", "Miami Swipe - PJ Pooterhoots", "B'Day (Deluxe Edition) - Beyonce", "Demian + Bonus Track - L'Aura", "Have You Ever Been Mellow - Party Animals", "Love, God & Radio - Opus", "Barefoot Blue Jean Night - Jake Owen", "Made4You - Funk & Soda", "Gavin Glass & The Holy Shakers - Gavin Glass", "Lego House (In The Style Of Ed Sheeran) - Ameritz Audio Karaoke", "Spotlight (Originally Performed by Gucci Mane Feat. Usher) - DJ Cover This", "The Eminem Show - Eminem", "13 Mejores Exitos - Chalino Sanchez", "Jazz Monster - Shazz Man", "Fortune (Deluxe Version) - Chris Brown", "Flockaveli - Waka Flocka Flame", "Neddi Omri La Holande - Amine Titi", "The Very Best Of The Doors (Bonus Tracks) - The Doors", "By Dingo - Peter's Farm", "Drive By - Train", "Random Access Memories - Daft Punk", "Tu Cárcel - K-3", "Riot! (With Bonus Track) - Paramore", "TM:103 Hustlerz Ambition (Deluxe) - Jeezy", "Port Of Miami - Rick Ross", "En Joan i els dofins - Carme Solé Vendrell", "Can't stop - Alain Bax", "Strauss: Complete Chamber Music, Vol. 1 - Music For Piano Quartet - Wolfgang Sawallisch", "The Adventures Of Dura Hale - Dura Hale", "Swan Songs (Parental Advisory) - Hollywood Undead", "Imagine Me - Personalized Music For Kids: Nayeli - The Personalized Kid Music Band", "Late Registration - Kanye West", "Pure Heroine - Lorde", "Dubois: Piano Trios Nos. 1-2 / Promenade Sentimentale / Cantilene - Trio Hochelaga", "The K.I.S.S.THEORY - Will Tell", "Kids Collection - Tributo Infantil a Estopa - The Harmony Group y Alfred Tapscott", "Trunk Muzik 0-60 (Parental Advisory) - YelaWolf", "In Love - Toosmooth~l.O.E", "Bryan Edington - Bryan Edington", "Finally Rich (Deluxe Edition) - Chief Keef", "The Idiot - Iggy Pop", "The Slim Shady LP - Eminem", "We Are Young Money - Young Money", "Viva La Vida Or Death And All His Friends - Coldplay", "The Neutrals - The Neutrals", "King Of The Blues Guitar - Albert King", "The Black Album - JAY Z", "Breakaway - Kelly Clarkson", "All The Right Reasons (Bonus Tracks) - Nickelback", "If This Was A Movie - Taylor Swift", "What Separates Me From You - A Day To Remember", "Who Wants Spaghetti? - Pierce Fulton", "Glee: The Music, The Christmas Album Volume 2 - Glee Cast", "Saboreando Pasodobles - Pasodobles", "Port Of Morrow - The Shins", "Drank In My Cup - Kirko Bangz", "40oz To Freedom (Parental Advisory) - Sublime", "Blunderbuss - Jack White", "Next Level - Bruno Renno", "Armando Hernandez Rey De La Musica Tropical - Armando Hernandez", "Up All Night - Kip Moore", "I'm Back - Glaze Cabana", "Deep Nrg 2010 - Remaster", "Scream & Shout (feat. Britney Spears) - will.i.am", "Cuba: Contradanzas & Danzones - Rotterdam Conservatory Orquesta Típica", "Pink Friday: Roman Reloaded - The Re-Up - Nicki Minaj", "The Hits of Selena - Studio Musicians", "Music - ILS", "Jak tam jest - Seweryn Krajewski", "Lullabye Mood - Lullabye Mood", "Solid State Recital - Puressence", "Mystery Love - Kevin Bazinet", "Prism (Deluxe Edition) - Katy Perry", "Kanashiki Kuchibue - Single - Hibari Misora", "Relapse: Refill - Eminem", "Red River Blue (Deluxe) - Blake Shelton", "The Truth About Love (Edited) - Pink", "Metanoia - Porcupine Tree", "Covered In Love EP - The Duke Spirit", "The R.E.D. Album - The Game", "Here I Stand - Usher", "More Monsters And Sprites - Skrillex", "F.A.M.E. - Chris Brown", "Beat Down - Downstait", "F.A.M.E. (Deluxe Version) - Chris Brown", "Hands All Over (Deluxe) - Maroon 5", "Strauss, R.: Salome - Reiner Goldberg", "Best of Zoroofchi - Yaghob Zoroofchi", "Paganini: 24 Capricci - Salvatore Accardo", "Scream - Usher", "Night Train - Jason Aldean", "Tourist History - Two Door Cinema Club", "Whistle - Flo Rida", "It Will Rain - Bruno Mars", "Cantando Por La Paz - Sin Kontrol", "Born To Die (Bonus Track Version) - Lana Del Rey", "Classical Ringtones - The Ringtones", "The Heist - Macklemore & Ryan Lewis", "Smoke & Mirrors - Lifehouse", "Apiti, vol. 3 - Nicholas", "Actuar Para Vivir - Juan Carlos Baglietto", "Tonights The Night (Moombahton Remixes) - Tommie Sunshine", "Power To The People - Protest Songs - Various Artists", "The Christmas Song - The O'Neill Brothers", "Undun (Explicit Version) - The Roots", "Brotid - Runi Brattaberg", "34 Number Ones - Alan Jackson", "Wide Open - Jason Aldean", "Just Like You - Keyshia Cole", "Ruth Etting, Vol. 1 - Ruth Etting", "Based on a T.R.U. Story (Deluxe Version) - 2 Chainz", "Exclusive: The Forever Edition - Chris Brown", "Bangerz (Deluxe Version) - Miley Cyrus", "Elephant - The White Stripes", "The 20/20 Experience - Justin Timberlake", "Trap Lord - A$AP Ferg", "The Complete John Peel Sessions (BBC Version) - The House Of Love", "Let's Dance Band Stand - Don Downs", "Smooth Jazz Tropical Paradise - The Wave Runners", "Little Broken Hearts - Norah Jones", "The Melody Stuart Project - Amy Profaci", "No Lie (feat. Drake) - 2 Chainz", "Hell: The Sequel (Deluxe Version) - Bad Meets Evil", "18 Months - Calvin Harris", "Sigh No More - Mumford & Sons", "The Head And The Heart - The Head and the Heart", "Ciara - Ciara", "The Blueprint (Deluxe Edition) - JAY Z", "A Different Kind Of Truth - Van Halen", "Beethoven, L. van: Piano Sonatas Vol. 1 - Timothy Ehlen", "Tha Carter II - Lil Wayne", "Tunnels & Pathways - Chad Hatcher", "Modern Vampires Of The City - Vampire Weekend", "Clarity - Zedd", "En İyileriyle Ayla Algan - Ayla Algan", "Blue Slide Park - Mac Miller", "Su Vida Artistica Vol. 1 - Olga Guillot", "Tell Me How - Faarsheed", "F.A.M.E. (Deluxe) - Chris Brown", "Some Hearts - Carrie Underwood", "Changed (Deluxe Edition) - Rascal Flatts", "El Primero - Jamon del Mar", "Melodías del Ayer - Imelda Cadavid", "En La Orilla - Pamela Rodriguez", "Stankonia - OutKast", "Fortune (Deluxe Version) - Chris Brown", "5 O'clock - T-Pain", "Gangnam Style (    ⬓__  ۓ _) - PSY", "The Hunger Games: Songs From District 12 And Beyond - Various Artists", "Back In Time - Corona", "For Emma, Forever Ago - Bon Iver", "Body Bombshell - Citizen Kain", "Night Visions - Imagine Dragons", "Suite Collection Vol.18 - Giuseppe Renne", "Autobiography - The Hit Parade", "Canzonissima, vol. 2 - High School Music Band", "Tegami - the free style", "Best Of (Deluxe Edition) - George Strait", "The Greatest Hits 1970-2002 (Double US CD) - Elton John", "Chopsocky - Small", "Project X: Original Motion Picture Soundtrack (Deluxe Edition) - Various Artists", "Hi Power 2005 - Hi Power Soldiers", "Lord Arthur - Lord Arthur & Marko Matematiko", "Quiero Amar A Otra - Indio", "Karaoke (with Competition Edits) - I Must Be a Star - Musical Creations Studio Musicians (Karaoke)", "80's Star - Laera", "Seine Grossten Erfolge, Vol. 9 - Peter Alexander", "Do it 2 nite - Rockefeller", "Nostalfi - NarkoSky", "DINOZAURÖW SWIAT WITA CIE - Dinozaury", "Save Rock And Roll - Fall Out Boy", "Nosferatu (O.S.T.) - Popol Vuh", "Sólo Azúcar - Azucar Moreno", "Platinum & Gold Collection - Tito Puente", "#1 Girl - Mindless Behavior", "Soft and Easy, Vol. 1 - The Syd Dale Combo", "Taylor Swift - Taylor Swift", "The Marshall Mathers LP 2 (Deluxe) - Eminem", "King - T.I.", "I Owe You Nothing - EP - S.O.S.", "Ready To Die (Remastered) - The Notorious B.I.G.", "All The Little Lights - Passenger", "9 West, Incl Markus Lange Remix - 9 West", "Mercy - Kanye West", "Year Of The Monkey - Tommy Guerrero", "rEVOLVEr (Deluxe Version) (Parental Advisory) - T-Pain", "Südlich von mir - Roland Kaiser", "Lights - Ellie Goulding", "Doggin' It - [The Dave Cash Collection] - Earl King", "Glad You Came - The Wanted", "8701 - Usher", "Automatic EP - AIRBUS MODULAR", "Amplificarse - Valerio Rinaldi", "Aitara - Värttinä", "Dancing In The Street (Performed live on The Ed Sullivan Show/1965) - Martha & The Vandellas", "Da Capo - Ace of Base", "Present The Rooftop - Jim Jones & Webstar", "Itself - Fishtank [No. 9]", "Blown Away - Carrie Underwood", "Aim And Ignite [Deluxe Version] - fun.", "Wanderers Forever - American Werewolves", "Man On The Moon II: The Legend Of Mr. Rager - Kid Cudi", "Heartbeat - Single (Lounge Version) - Fly 2 Project", "The MF Life (Deluxe Version) - Melanie Fiona", "Kyss The Girl - Kyss Major", "Foerster: Violin Concertos - Ivan Zenaty", "Dangerously In Love - Beyonce", "Bible Songs For Kids - Volume 2 - St. John Children's Choir", "Sardaxou 6 - Cobla Contemporània", "Potion - Down Low", "Si Me Estas Escuchando - Nocivo", "Good Feeling - Flo Rida", "Countach: The Remixes - The Cassettes", "Hurry Up We're Dreaming - M83", "G-Spot - Gerald Levert", "My Kinda Party - Jason Aldean", "The Massacre (Deluxe Edition) - 50 Cent", "Houari Manar - Houari Manar", "Nature’s Songs (Nature Sounds) - Nature Sound Collection", "Fearless: Platinum Edition - Taylor Swift", "Ceremonials (Deluxe Edition) - Florence & The Machine", "Denuwan - Iraj", "Bad (Feat. Tiara Thomas) - Wale", "Real Emotional - Curtis Stigers", "Urban Legend - T.I.", "Sahara (Music from and Inspired by the Motion Picture) - Various Artists", "Tribute to the Blues - Mietek Blues Band", "Traditional Folk Ballads From Ireland - Tara", "19 - Adele", "Stars Dance - Selena Gomez", "Camp Rock 2: The Final Jam - Cast of Camp Rock 2", "Haciendo Historia - Banda El Recodo De Cruz Liz rraga", "The Promise - Bruce Springsteen", "Magna Carta... Holy Grail - JAY Z", "Derivatives - William Fitzsimmons", "September EP - St. Lucia", "Who The F*** Are Arctic Monkeys? - Arctic Monkeys", "Oblivion Hymns - Hammock", "Write Your Story - Francesca Battistelli", "Breathe - Faith Hill", "I See It Now - Tracy Lawrence", "Frick Park Market - Single - Mac Miller", "Me And My Uke - Never Shout Never", "My Nigga - YG", "Sex You - Bando Jonez", "Peter Rosenberg x Ecko Present: The New York Renaissance - Various Artists", "All You Can Eat - Steel Panther", "Greatest Hits - Sixpence None The Richer", "Violator [digital version] - Depeche Mode", "Clubhouse Vol. 2 - Various Artists", "Fantasy EP (Remix) - MS MR", "Enamorada de Ti - Selena", "The Road To Here - Little Big Town", "Love Songs - Destiny's Child", "Diamond Rio - Diamond Rio", "The Well Pennies [EP] - The Well Pennies", "Selfish Machines (Reissue) - Pierce The Veil", "Meet The Orphans - Don Omar", "The Blue Print - JAY-Z", "Flume - Flume", "Classical Chillout - Various Artists", "Live In London - Birdy", "Looking Glass - Looking Glass", "Double Take - Shawn McDonald - Shawn McDonald", "Home - Phillip Phillips", "B'Day Deluxe Edition - Beyonce", "Brother Bear - Phil Collins", "Almeria - Lifehouse", "The Complete Box - The Replacements", "Nation Of Heat Ep - Joe Pug", "The Essential Bill Withers - Bill Withers", "Drop That #NaeNae - Single - We Are Toonz", "A State Of Trance Episode 656 (A State Of Trance 2014 Special) - Armin van Buuren", "In My Veins - Andrew Belle", "The Foundation - Zac Brown Band", "Hippie Flipp - Hippie Flipp", "Light Up Gold - Parquet Courts", "Silent Treatment - Highasakite", "Don't Wanna Dance - M", "Anchor - Mindy Gledhill", "Realmente Lo Mejor - Julieta Venegas", "Greatest Hits - Nas", "The Fray - The Fray", "Monstercat - Best of 2012 - Various Artists", "Get Up (Rattle) - Bingo Players", "Indigoism - The Underachievers", "SoundWaves EP - Tribal Seeds", "All Bad - Justin Bieber", "The Best of Rascal Flatts LIVE - Rascal Flatts", "Ed Sheeran - Spotify Session - Ed Sheeran", "Lanterns - Son Lux", "La Roux - La Roux", "Call of Duty: Modern Warfare 2 - Hans Zimmer", "Grandes  xitos Remezclados Y Remasterizados - Los Angeles Azules", "B.o.B Presents: The Adventures of Bobby Ray - B.o.B", "Clumsy - Our Lady Peace", "Rhino Hi-Five: Metal - Various Artists", "Beacon - Two Door Cinema Club", "Awake - Skillet", "Young & Sick - Young & Sick", "Little Games - The Colourist", "A Real Hero EP - College", "Cavalier Youth - You Me At Six", "Slow Me Down - Sara Evans", "Rude - Magic!", "Introducing The City Harmonic - The City Harmonic", "Soy Mexicano - Los Huracanes Del Norte", "MDNA - Madonna", "Comeback Cadillac - The Weeks", "Glow - Royal Teeth", "Seven's Travels - Atmosphere", "Ai Se Eu Te Pego - Michel Tel", "Walk The Line - Original Motion Picture Soundtrack - Original Soundtrack", "Covered N Money - Future", "Unplugged - Alicia Keys", "Song Review: A Greatest Hits Collection - Stevie Wonder", "Jars Of Clay - Jars Of Clay", "Chill Music, Romantic Dinner Party, Cool Instrumental Songs, Chill Songs, Dinner Guitar, Acoustic Background Guitar, Cool Music - Relaxing Instrumental Jazz Ensemble", "Dear Miss Lonelyhearts - Cold War Kids", "Hands All Over - Maroon 5", "Rome - Danger Mouse", "Wonders Of The World - Long Beach Dub Allstars", "Duran Duran [The Wedding Album] - Duran Duran", "I Wish You Would - DJ Khaled", "So Jealous - Tegan And Sara", "Day & Age - The Killers", "Reloaded 1 - Jawga Boyz", "Causers Of This - Toro Y Moi", "Uprising - Bob Marley & The Wailers", "Lotus (Deluxe Version) - Christina Aguilera"};
    private SparseArray<Radio.RadioStationInfo> mCurrentStation;
    private final Handler mHandler;
    private Radio.RadioEndpoint mRadioEndpoint;
    private List<Radio.RadioProperties> mRadioProperties;
    private Radio.RadioState mRadioState;
    private ScanRunnable mScanRunnable;
    private final Random mRandom = new Random();
    private final SparseArray<List<Radio.RadioStationInfo>> mProgramLists = new SparseArray<>();
    private final Object mRadioStateLock = new Object();

    public class ProgramListUpdateRunnable implements Runnable {
        private ProgramListUpdateRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (RadioStub.this.mProgramLists) {
                for (int i2 = 0; i2 < RadioStub.this.mProgramLists.size(); i2++) {
                    Iterator it = ((List) RadioStub.this.mProgramLists.get(RadioStub.this.mProgramLists.keyAt(i2))).iterator();
                    while (it.hasNext()) {
                        ((Radio.RadioStationInfo) it.next()).metaData = RadioStub.this.generateMetaData();
                    }
                }
            }
            synchronized (RadioStub.this.mRadioStateLock) {
                RadioStub.this.mRadioEndpoint.sendRadioStationInfoNotification(RadioStub.this.mRadioState.activeRadioId, RadioStub.this.mRadioState.stationInfo);
            }
            RadioStub.this.mHandler.postDelayed(this, 20000L);
        }
    }

    public class ScanRunnable implements Runnable {
        private int mRadioId;
        private boolean mUp;

        public ScanRunnable(int i2, boolean z2) {
            this.mRadioId = i2;
            this.mUp = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Radio.RadioStationInfo radioStationInfoFindNextStation = RadioStub.this.findNextStation(this.mRadioId, this.mUp, false);
            if (radioStationInfoFindNextStation != null) {
                synchronized (RadioStub.this.mRadioStateLock) {
                    RadioStub.this.mRadioState.activeRadioId = this.mRadioId;
                    RadioStub.this.mRadioState.stationInfo = radioStationInfoFindNextStation;
                    RadioStub.this.mRadioEndpoint.sendRadioStationInfoNotification(this.mRadioId, RadioStub.this.mRadioState.stationInfo);
                }
            }
            RadioStub.this.mHandler.postDelayed(this, 2000L);
        }
    }

    public class StationPresetsRunnable implements Runnable {
        private StationPresetsRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RadioStub.this.mRadioState.stationPresetLists != null) {
                RadioStub.this.mRadioEndpoint.sendStationPresetsResponse(RadioStub.this.mRadioState.stationPresetLists);
            }
            RadioStub.this.mHandler.postDelayed(this, JobInfo.MIN_BACKOFF_MILLIS);
        }
    }

    public RadioStub() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Radio.StationPresetList("FM1", new ArrayList(Arrays.asList(1)), new ArrayList(Arrays.asList(new Radio.StationPreset(1, 89400000, 0), new Radio.StationPreset(1, 90100000, 0), new Radio.StationPreset(1, 94200000, 0), new Radio.StationPreset(1, 96800000, 0), new Radio.StationPreset(1, 98700000, 0), new Radio.StationPreset(1, 99900000, 0)))));
        arrayList.add(new Radio.StationPresetList("FM2", new ArrayList(Arrays.asList(1)), new ArrayList(Arrays.asList(new Radio.StationPreset(1, 89400000, 0), new Radio.StationPreset(1, 93100000, 0), new Radio.StationPreset(1, 104200000, 0), new Radio.StationPreset(1, 93800000, 0), new Radio.StationPreset(1, 98700000, 0), new Radio.StationPreset(1, 89200000, 0)))));
        arrayList.add(new Radio.StationPresetList("FM3", new ArrayList(Arrays.asList(1)), new ArrayList(Arrays.asList(new Radio.StationPreset(1, 105400000, 0), new Radio.StationPreset(1, 90100000, 0), new Radio.StationPreset(1, 90200000, 0), new Radio.StationPreset(1, 93800000, 0), new Radio.StationPreset(1, 90700000, 0), new Radio.StationPreset(1, 101900000, 0)))));
        arrayList.add(new Radio.StationPresetList("AM1", new ArrayList(Arrays.asList(0)), new ArrayList(Arrays.asList(new Radio.StationPreset(0, 6800000, 0), new Radio.StationPreset(0, 7900000, 0), new Radio.StationPreset(0, 8100000, 0), new Radio.StationPreset(0, 9800000, 0), new Radio.StationPreset(0, 10800000, 0), new Radio.StationPreset(0, 1120000, 0)))));
        this.mRadioState = new Radio.RadioState(true, false, 2, new Radio.RadioStationInfo(1, 95700000, 0, generateMetaData()), new ArrayList(), arrayList);
        this.mRadioProperties = Arrays.asList(new Radio.RadioProperties(1, 0, Arrays.asList(new Radio.Range(580000, 1100000)), Arrays.asList(10000), 10000, true, 1, 0, false, false, 0, false, false, 0), new Radio.RadioProperties(2, 1, Arrays.asList(new Radio.Range(88000000, 108000000)), Arrays.asList(Integer.valueOf(UserHandle.PER_USER_RANGE), 200000), UserHandle.PER_USER_RANGE, true, 1, 2, true, true, 1, false, false, 0));
        this.mCurrentStation = new SparseArray<>();
        for (Radio.RadioProperties radioProperties : this.mRadioProperties) {
            SparseArray<List<Radio.RadioStationInfo>> sparseArray = this.mProgramLists;
            int i2 = radioProperties.radioId;
            sparseArray.put(i2, generateProgramList(i2));
            int i3 = radioProperties.radioId;
            Radio.RadioState radioState = this.mRadioState;
            if (i3 == radioState.activeRadioId) {
                SparseArray<Radio.RadioStationInfo> sparseArray2 = this.mCurrentStation;
                int i4 = radioProperties.type;
                Radio.RadioStationInfo radioStationInfo = radioState.stationInfo;
                sparseArray2.put(i3, new Radio.RadioStationInfo(i4, radioStationInfo.channel, radioStationInfo.subChannel, radioStationInfo.metaData));
            } else {
                this.mCurrentStation.put(i3, new Radio.RadioStationInfo(radioProperties.type, radioProperties.channelRange.get(0).min, 0, generateMetaData()));
            }
        }
        Handler handler = new Handler();
        this.mHandler = handler;
        handler.postDelayed(new ProgramListUpdateRunnable(), 20000L);
        handler.postDelayed(new StationPresetsRunnable(), JobInfo.MIN_BACKOFF_MILLIS);
    }

    private static int clipChannelToRange(int i2, List<Radio.Range> list, boolean z2) {
        int i3 = list.get(list.size() - 1).max;
        int i4 = 0;
        int i5 = list.get(0).min;
        if (i2 > i3) {
            return i5;
        }
        if (i2 < i5) {
            return i3;
        }
        while (i4 < list.size() - 1) {
            int i6 = list.get(i4).max;
            i4++;
            int i7 = list.get(i4).min;
            if (i2 > i6 && i2 < i7) {
                i2 = z2 ? i7 : i6;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public Radio.RadioStationInfo findNextStation(int i2, boolean z2, boolean z3) {
        Radio.RadioStationInfo radioStationInfo = this.mCurrentStation.get(i2);
        Radio.RadioProperties radioProperties = getRadioProperties(i2);
        if (radioStationInfo == null || radioProperties == null) {
            return null;
        }
        int i3 = radioStationInfo.channel;
        List<Radio.RadioStationInfo> list = this.mProgramLists.get(i2);
        if (list == null) {
            m.A("no program list for radio id ", i2, TAG);
            return null;
        }
        if (!list.isEmpty()) {
            if (!z2) {
                radioStationInfo = list.get(list.size() - 1);
                for (int size = list.size() - 2; size > 0; size--) {
                    Radio.RadioStationInfo radioStationInfo2 = list.get(size);
                    Radio.RadioStationInfo radioStationInfo3 = list.get(size + 1);
                    if (i3 > radioStationInfo2.channel && i3 <= radioStationInfo3.channel) {
                        radioStationInfo = radioStationInfo2;
                        break;
                    }
                }
            } else {
                Radio.RadioStationInfo radioStationInfo4 = list.get(0);
                for (int i4 = 1; i4 < list.size(); i4++) {
                    Radio.RadioStationInfo radioStationInfo5 = list.get(i4 - 1);
                    Radio.RadioStationInfo radioStationInfo6 = list.get(i4);
                    if (i3 >= radioStationInfo5.channel && i3 < radioStationInfo6.channel) {
                        radioStationInfo = radioStationInfo6;
                    }
                }
                radioStationInfo = radioStationInfo4;
            }
        }
        this.mCurrentStation.put(i2, radioStationInfo);
        return radioStationInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Radio.RadioStationInfo.MetaData generateMetaData() {
        Radio.RadioStationInfo.MetaData.Builder signalQuality = new Radio.RadioStationInfo.MetaData.Builder().setAudioChannels(2).setSignalQuality(100);
        Radio.RadioStationInfo.RdsData.Builder builder = new Radio.RadioStationInfo.RdsData.Builder();
        String[] strArr = mRadioTextTable;
        return signalQuality.setRdsData(builder.setRadioText(strArr[(int) Math.abs(this.mRandom.nextDouble() * ((double) (strArr.length - 1)))]).build()).build();
    }

    private List<Radio.RadioStationInfo> generateProgramList(int i2) {
        ArrayList arrayList = new ArrayList();
        Radio.RadioProperties radioProperties = getRadioProperties(i2);
        if (radioProperties != null) {
            int iAbs = radioProperties.channelRange.get(0).min;
            List<Radio.Range> list = radioProperties.channelRange;
            int i3 = list.get(list.size() - 1).max;
            while (iAbs < i3) {
                int iClipChannelToRange = clipChannelToRange(iAbs, radioProperties.channelRange, true);
                arrayList.add(new Radio.RadioStationInfo(radioProperties.type, iClipChannelToRange, 0, generateMetaData()));
                iAbs = iClipChannelToRange + ((((int) Math.abs(this.mRandom.nextGaussian() * 20.0d)) + 1) * radioProperties.channelSpacing);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002a  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    private Radio.RadioStationInfo.MetaData getMetaDataForStation(int i2, int i3, int i4, int i5) {
        Radio.RadioStationInfo.MetaData metaData;
        for (Radio.RadioStationInfo radioStationInfo : this.mProgramLists.get(i2)) {
            if (i3 == radioStationInfo.radioType && i4 == radioStationInfo.channel && i5 == radioStationInfo.subChannel) {
                metaData = radioStationInfo.metaData;
                if (metaData == null) {
                    return new Radio.RadioStationInfo.MetaData.Builder().setAudioChannels(0).setSignalQuality(0).build();
                }
                return metaData;
            }
        }
        metaData = null;
        if (metaData == null) {
            return new Radio.RadioStationInfo.MetaData.Builder().setAudioChannels(0).setSignalQuality(0).build();
        }
        return metaData;
    }

    private boolean validStation(Radio.RadioProperties radioProperties, int i2, int i3) {
        int i4 = radioProperties.type;
        return (!(i4 == 2 || i4 == 3) || (i3 >= 0 && i3 <= 8)) && i2 == clipChannelToRange(i2, radioProperties.channelRange, true);
    }

    @Override // com.google.android.projection.protocol.Radio
    public int cancel(int i2) {
        this.mHandler.removeCallbacks(this.mScanRunnable);
        return this.mRadioEndpoint.sendCancelResponse(0, i2);
    }

    @Override // com.google.android.projection.protocol.Radio
    public int configureChannelSpacing(int i2, int i3) {
        Radio.RadioProperties radioProperties = getRadioProperties(i2);
        if (radioProperties == null) {
            Log.w(TAG, "Invalid radioId");
            return this.mRadioEndpoint.sendChannelSpacingResponse(-20, i2, i3);
        }
        radioProperties.channelSpacing = i3;
        return this.mRadioEndpoint.sendChannelSpacingResponse(0, i2, i3);
    }

    @Override // com.google.android.projection.protocol.Radio
    public int enableRadioSource() {
        return this.mRadioEndpoint.sendRadioSourceResponse(0, true);
    }

    @Override // com.google.android.projection.protocol.Radio
    public Radio.RadioState getCurrentRadioState() {
        return this.mRadioState;
    }

    @Override // com.google.android.projection.protocol.Radio
    public int getProgramList(int i2) {
        if (this.mProgramLists.indexOfKey(i2) < 0) {
            return this.mRadioEndpoint.sendProgramListResponse(-20, i2, true, new ArrayList());
        }
        return this.mRadioEndpoint.sendProgramListResponse(0, i2, true, this.mProgramLists.get(i2));
    }

    @Override // com.google.android.projection.protocol.Radio
    public List<Radio.RadioProperties> getRadioProperties() {
        return this.mRadioProperties;
    }

    @Override // com.google.android.projection.protocol.Radio
    public int getTrafficUpdate(int i2) {
        return this.mRadioEndpoint.sendTrafficUpdateResponse(0, i2, new ArrayList(Arrays.asList(new Radio.TrafficIncident(MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_NOTIVIEW_DENY, 1000, 37.420822d, -122.083715d), new Radio.TrafficIncident(MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_ASK, 500, 37.423736d, -122.090002d))));
    }

    @Override // com.google.android.projection.protocol.Radio
    public int mute(int i2, boolean z2) {
        return this.mRadioEndpoint.sendMuteResponse(0, i2, z2);
    }

    @Override // com.google.android.projection.protocol.Radio
    public int scan(int i2, boolean z2, boolean z3, boolean z4) {
        Log.d(TAG, "onScanStationsRequest");
        this.mHandler.removeCallbacks(this.mScanRunnable);
        Radio.RadioProperties radioProperties = getRadioProperties(i2);
        Radio.RadioStationInfo radioStationInfo = this.mCurrentStation.get(i2);
        if (radioProperties == null || radioStationInfo == null) {
            Log.w(TAG, "Invalid radioId");
            this.mRadioEndpoint.sendScanResponse(-20, i2, z2);
            return -20;
        }
        int iSendScanResponse = this.mRadioEndpoint.sendScanResponse(0, i2, z2);
        if (iSendScanResponse != 0) {
            Log.w(TAG, "nativeSendScanStationsResponse() returned error");
            return iSendScanResponse;
        }
        this.mRadioState.activeRadioId = i2;
        if (z2) {
            ScanRunnable scanRunnable = new ScanRunnable(i2, z3);
            this.mScanRunnable = scanRunnable;
            this.mHandler.post(scanRunnable);
        }
        return 0;
    }

    @Override // com.google.android.projection.protocol.Radio
    public int seek(int i2, boolean z2, boolean z3) {
        android.accessibilityservice.c.z("onSeekStationRequest up=", z2, TAG);
        this.mHandler.removeCallbacks(this.mScanRunnable);
        Radio.RadioProperties radioProperties = getRadioProperties(i2);
        Radio.RadioStationInfo radioStationInfoFindNextStation = findNextStation(i2, z2, z3);
        if (radioProperties == null || radioStationInfoFindNextStation == null) {
            Log.w(TAG, "Invalid radioId");
            this.mRadioEndpoint.sendSeekResponse(-20, i2);
            return -20;
        }
        int iSendSeekResponse = this.mRadioEndpoint.sendSeekResponse(0, i2);
        if (iSendSeekResponse != 0) {
            Log.w(TAG, "nativeSendSeekStationResponse() returned error");
            return iSendSeekResponse;
        }
        synchronized (this.mRadioStateLock) {
            Radio.RadioState radioState = this.mRadioState;
            radioState.activeRadioId = i2;
            radioState.stationInfo = radioStationInfoFindNextStation;
        }
        return this.mRadioEndpoint.sendRadioStationInfoNotification(i2, radioStationInfoFindNextStation);
    }

    @Override // com.google.android.projection.protocol.Radio
    public int selectRadio(int i2) {
        Radio.RadioStationInfo radioStationInfo = this.mCurrentStation.get(i2);
        if (radioStationInfo == null) {
            Log.w(TAG, "Invalid radioId");
            return -20;
        }
        synchronized (this.mRadioStateLock) {
            Radio.RadioState radioState = this.mRadioState;
            radioState.activeRadioId = i2;
            radioState.stationInfo = radioStationInfo;
        }
        return this.mRadioEndpoint.sendActiveRadioResponse(0, i2, radioStationInfo);
    }

    @Override // com.google.android.projection.protocol.Radio
    public void setRadioEndpoint(Radio.RadioEndpoint radioEndpoint) {
        this.mRadioEndpoint = radioEndpoint;
    }

    @Override // com.google.android.projection.protocol.Radio
    public int step(int i2, boolean z2, boolean z3) {
        Log.d(TAG, "onStepChannelRequest");
        this.mHandler.removeCallbacks(this.mScanRunnable);
        Radio.RadioProperties radioProperties = getRadioProperties(i2);
        if (radioProperties == null) {
            Log.w(TAG, "Invalid radioId");
            this.mRadioEndpoint.sendStepResponse(-20, i2);
            return -20;
        }
        Radio.RadioStationInfo radioStationInfo = new Radio.RadioStationInfo(this.mCurrentStation.get(i2).radioType, this.mCurrentStation.get(i2).channel, this.mCurrentStation.get(i2).subChannel);
        int iSendStepResponse = this.mRadioEndpoint.sendStepResponse(0, i2);
        if (iSendStepResponse != 0) {
            Log.w(TAG, "sendStepResponse() returned error");
            return iSendStepResponse;
        }
        if (z2) {
            radioStationInfo.channel += radioProperties.channelSpacing;
        } else {
            radioStationInfo.channel -= radioProperties.channelSpacing;
        }
        int iClipChannelToRange = clipChannelToRange(radioStationInfo.channel, radioProperties.channelRange, z2);
        radioStationInfo.channel = iClipChannelToRange;
        radioStationInfo.subChannel = 0;
        radioStationInfo.metaData = getMetaDataForStation(i2, radioStationInfo.radioType, iClipChannelToRange, 0);
        this.mCurrentStation.put(i2, radioStationInfo);
        synchronized (this.mRadioStateLock) {
            Radio.RadioState radioState = this.mRadioState;
            radioState.activeRadioId = i2;
            radioState.stationInfo = radioStationInfo;
        }
        return this.mRadioEndpoint.sendRadioStationInfoNotification(i2, radioStationInfo);
    }

    @Override // com.google.android.projection.protocol.Radio
    public int tune(int i2, int i3, int i4) {
        Log.d(TAG, "onTuneToStationRequest");
        this.mHandler.removeCallbacks(this.mScanRunnable);
        Radio.RadioProperties radioProperties = getRadioProperties(i2);
        if (radioProperties == null || !validStation(radioProperties, i3, i4)) {
            Log.w(TAG, "Invalid radio_id/station");
            this.mRadioEndpoint.sendTuneResponse(-20, i2);
            return -20;
        }
        int iSendTuneResponse = this.mRadioEndpoint.sendTuneResponse(0, i2);
        if (iSendTuneResponse != 0) {
            Log.w(TAG, "sendTuneResponse() returned error");
            return iSendTuneResponse;
        }
        int i5 = radioProperties.type;
        Radio.RadioStationInfo radioStationInfo = new Radio.RadioStationInfo(i5, i3, i4, getMetaDataForStation(i2, i5, i3, i4));
        this.mCurrentStation.put(i2, radioStationInfo);
        synchronized (this.mRadioStateLock) {
            Radio.RadioState radioState = this.mRadioState;
            radioState.stationInfo = radioStationInfo;
            radioState.activeRadioId = i2;
        }
        return this.mRadioEndpoint.sendRadioStationInfoNotification(i2, radioStationInfo);
    }

    @Nullable
    private Radio.RadioProperties getRadioProperties(int i2) {
        for (Radio.RadioProperties radioProperties : this.mRadioProperties) {
            if (radioProperties.radioId == i2) {
                return radioProperties;
            }
        }
        return null;
    }
}
